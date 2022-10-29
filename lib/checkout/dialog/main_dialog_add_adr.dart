import 'dart:convert';

import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/amphure_model.dart';
import 'package:bizfull/models/province_model.dart';
import 'package:bizfull/models/tumbon_model.dart';
import 'package:bizfull/models/val_change_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:validators/validators.dart';
import 'package:http/http.dart' as http;

InputDecoration selectDecoration(String hitTxt, IconData iconData) {
  return InputDecoration(
    hoverColor: Colors.white,
    focusColor: Colors.white,
    filled: true,
    fillColor: Colors.white,
    isDense: true,
    contentPadding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
    labelText: hitTxt,
    border: const OutlineInputBorder(),
    prefixIcon: Icon(iconData),
  );
}

class DialogAddAdrMain extends StatefulWidget {
  final ValueChanged<ValChangeModel> onValChange;
  DialogAddAdrMain({Key? key, required this.onValChange}) : super(key: key);

  @override
  State<DialogAddAdrMain> createState() => _DialogAddAdrMainState();
}

class _DialogAddAdrMainState extends State<DialogAddAdrMain> {
  final box = GetStorage();
  @override
  void initState() {
    super.initState();
    getProvince();
  }

  TextEditingController clName = TextEditingController(text: "วาสนา พงษ์คำ");
  TextEditingController clPhone = TextEditingController(text: "0984405211");
  TextEditingController clNoHome = TextEditingController(text: "71 ม.8");
  TextEditingController clPostCode = TextEditingController(text: "62000");

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<ProviceModel> itemsProv = [];

  List<AmphurModel> itemsAmp = [];

  List<DictrictModel> itemsDict = [];

  String? selectedValueProv;
  String? selectedValueAmp;
  String? selectedValueDict;

  Future<void> getProvince() async {
    var url = "${Global.hostName}/province.php";
    var res = await http.get(Uri.parse(url));
    itemsProv = proviceModelFromJson(res.body);
    setState(() {});
  }

  Future<void> getAmphur(String? provIdGet) async {
    var url = "${Global.hostName}/amphure.php?prov_id=$provIdGet";
    var res = await http.get(Uri.parse(url));
    itemsAmp = amphurModelFromJson(res.body);
    setState(() {
      selectedValueAmp = null;
    });
  }

  Future<void> getDict(String? ampIdGet) async {
    var url = "${Global.hostName}/dictrict.php?amp_id=$ampIdGet";
    var res = await http.get(Uri.parse(url));
    itemsDict = dictrictModelFromJson(res.body);
    setState(() {
      selectedValueDict = null;
    });
  }

  void _validate() {
    if (formKey.currentState!.validate()) {
      setAddAdr();
    }
  }

  Future<void> setAddAdr() async {
    var dataForm = {
      "adrs_home": clNoHome.text,
      "adrs_prov": selectedValueProv,
      "adrs_amp": selectedValueAmp,
      "adrs_dict": selectedValueDict,
      "adrs_name": clName.text,
      "adrs_phone": clPhone.text,
      "adrs_post": clPostCode.text,
      "user_id": box.read("user_id").toString(),
    };
    var url = "${Global.hostName}/adr_add.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    var getData = json.decode(res.body);

    if (getData["status"] == "ok") {
      // ignore: use_build_context_synchronously
      widget.onValChange(
          ValChangeModel(status: "yes", data: getData['data'].toString()));
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    }
  }

  @override
  Widget build(BuildContext context) {
    String tYP;

    if (Device.width > 991) {
      tYP = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      tYP = "mobile";
    } else {
      tYP = "mobile";
    }
    return SizedBox(
      width: 500,
      height: 552,
      child: Form(
        key: formKey,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50, right: 20, left: 20, bottom: 30),
                    child: Column(children: [contFormAdd()]),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 20),
                      Text(
                        "ที่อยู่ใหม่",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 50,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(
                    color: Colors.black12,
                    height: 1.0,
                  )),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 65,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 8, left: 10, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Material(
                            child: InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(7),
                                    color: const Color.fromARGB(
                                        31, 143, 143, 143)),
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 30,
                                    right: 30),
                                child: const Text(
                                  "ยกเลิก",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffed3023),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ))),
                            onPressed: () {
                              // Navigator.pop(context);
                              _validate();
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0, left: 20, right: 20),
                              child: const Text(
                                "ยืนยัน",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]),
                  ),
                )),
            Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 65,
                  child: Column(
                    children: const [
                      Divider(
                        color: Colors.black12,
                        height: 1.0,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget contFormAdd() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SizedBox(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                controller: clName,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'ชื่อ-นามสกุล',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "กรุณากรอกชื่อ-นามสกุล";
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                controller: clPhone,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'เบอร์โทรศัพท์',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "กรุณากรอกเบอร์โทรศัพท์";
                  } else if (!isLength(val, 9, 32)) {
                    return "กรุณากรอกเบอร์โทรศัพท์ให้ครบ";
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                controller: clNoHome,
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                  labelText: 'บ้านเลขที่/อาคาร',
                  border: OutlineInputBorder(),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "กรุณากรอกบ้านเลขที่/อาคาร";
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: DropdownButtonFormField2(
                isDense: true,
                decoration: selectDecoration("จังหวัด", Icons.map_rounded),
                isExpanded: true,
                hint: const Text(
                  'เลือก',
                  style: TextStyle(fontSize: 14),
                ),
                buttonHeight: 30,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                value: selectedValueProv,
                buttonPadding: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 10),
                items: itemsProv
                    .map((item) => DropdownMenuItem<String>(
                          value: "${item.id}",
                          child: Text(
                            item.nameTh,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValueProv = value as String;
                    selectedValueAmp = null;
                    itemsAmp = [];
                    selectedValueDict = null;
                    itemsDict = [];
                    getAmphur(selectedValueProv);
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'กรุณาเลือกจังหวัด';
                  }
                  return null;
                },
                onSaved: (value) {
                  selectedValueProv = value.toString();
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: DropdownButtonFormField2(
                isDense: true,
                decoration: selectDecoration("อำเภอ", Icons.map_rounded),
                isExpanded: true,
                hint: const Text(
                  'เลือก',
                  style: TextStyle(fontSize: 14),
                ),
                buttonHeight: 30,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                buttonPadding: const EdgeInsets.only(
                    left: 0, right: 0, top: 0, bottom: 10),
                value: selectedValueAmp,
                items: itemsAmp
                    .map((item) => DropdownMenuItem<String>(
                          value: "${item.id}",
                          child: Text(
                            item.nameTh,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'กรุณาเลือกอำเภอ';
                  }
                },
                onChanged: (value) {
                  setState(() {
                    selectedValueAmp = value as String;
                    selectedValueDict = null;
                    itemsDict = [];
                    getDict(selectedValueAmp);
                  });
                },
                onSaved: (value) {
                  selectedValueAmp = value.toString();
                },
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.5),
                  child: SizedBox(
                    child: Theme(
                      data: ThemeData(
                          primarySwatch: Colors.red, fontFamily: "Prompt"),
                      child: DropdownButtonFormField2(
                        isDense: true,
                        decoration: selectDecoration("ตำบล", Icons.map_rounded),
                        isExpanded: true,
                        hint: const Text(
                          'เลือก',
                          style: TextStyle(fontSize: 14),
                        ),
                        buttonHeight: 30,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black45,
                        ),
                        buttonPadding: const EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 10),
                        items: itemsDict
                            .map((item) => DropdownMenuItem<String>(
                                  value: item.id.toString(),
                                  child: Text(
                                    item.nameTh,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        validator: (value) {
                          if (value == null) {
                            return 'กรุณาเลือกตำบล';
                          }
                        },
                        onChanged: (value) {
                          selectedValueDict = value.toString();
                        },
                        onSaved: (value) {
                          selectedValueDict = value.toString();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 7.5),
                  child: SizedBox(
                    child: Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red, fontFamily: "Prompt"),
                        child: TextFormField(
                          controller: clPostCode,
                          decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                            labelText: "รหัสไปรษณีย์",
                            border: OutlineInputBorder(),
                          ),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "กรุณากรอกรหัสไปรษณีย์";
                            }
                            return null;
                          },
                        )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
