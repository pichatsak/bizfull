import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/amphure_model.dart';
import 'package:bizfull/models/province_model.dart';
import 'package:bizfull/models/tumbon_model.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscure2 = true;
  bool _isObscure1 = true;
  final username = TextEditingController(text: "sssss");
  var color = Colors.transparent;

  TextEditingController userName = TextEditingController(text: "nitiphon1996");
  TextEditingController nameUser = TextEditingController(text: "นิติพล พงษ์คำ");
  TextEditingController emailUser =
      TextEditingController(text: "ni.tiphon202@gmail.com");
  TextEditingController phoneUser = TextEditingController(text: "0967959507");
  TextEditingController pass1 = TextEditingController(text: "nitiphon1996");
  TextEditingController pass2 = TextEditingController(text: "nitiphon1996");
  TextEditingController postCode = TextEditingController();
  TextEditingController adr = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<ProviceModel> itemsProv = [];

  List<AmphurModel> itemsAmp = [];

  List<DictrictModel> itemsDict = [];

  String? selectedValueProv;
  String? selectedValueAmp;
  String? selectedValueDict;
  void _validate() {
    if (formKey.currentState!.validate()) {
      setRegister();
    }
  }

  Future<void> setRegister() async {
    var dataForm = {
      "user_name": nameUser.text,
      "user_email": emailUser.text,
      "user_password": pass1.text,
      "user_phone": phoneUser.text,
      "user_adr": adr.text,
      "user_prov": selectedValueProv,
      "user_amp": selectedValueAmp,
      "user_dictric": selectedValueDict,
      "user_postcode": postCode.text,
      "username": userName.text
    };
    print(dataForm);
    var url = "${Global.hostName}/register.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    print(res.body);
    var getData = json.decode(res.body);
    if (getData["status"] == "ok") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogSuccessRegis(context, "เข้าสู่ระบบเพื่อใช้งานได้"));
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    } else if (getData["status"] == "repleat") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "บัญชีนี้มีอยู่ในระบบแล้ว"));
    }
  }

  @override
  void initState() {
    getProvince();
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
        sizes: 'col-6',
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 20, bottom: 20),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
              right: BorderSide(
                width: 0.7,
                color: Colors.black26,
              ),
            )),
            child: Column(
              children: [
                SizedBox(
                  height: 370,
                  child: Center(
                      child: Image.asset(
                    "images/na.png",
                    width: 240,
                  )),
                ),
                SizedBox(
                  height: 260,
                  child: Column(
                    children: [
                      const Text(
                        "Easy Shipping & shopping",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff22265a),
                            fontFamily: "Prompt-ExtraBold"),
                      ),
                      const Text(
                        "ซัพพอร์ทธุรกิจครบวงจร",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff22265a),
                            fontFamily: "Prompt-Medium",
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xffaa1f2e),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ))),
                        onPressed: () {
                          Navigator.of(context).pushNamed("/login");
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 8, bottom: 8, left: 48, right: 48),
                          child: Text(
                            "เข้าสู่ระบบ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       color: const Color(0xffaa1f2e),
                      //       borderRadius: BorderRadius.circular(15)),
                      //   child: const Padding(
                      //     padding: EdgeInsets.only(
                      //         top: 8, bottom: 8, left: 53, right: 53),
                      //     child: Text(
                      //       "เข้าสู่ระบบ",
                      //       style: TextStyle(
                      //         fontSize: 18,
                      //         color: Colors.white,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      BootstrapCol(
          sizes: 'col-6',
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("สร้างบัญชีผู้ใช้",
                            style: TextStyle(
                                fontSize: 35,
                                color: Color(0xffed3023),
                                fontFamily: "Prompt-Bold")),
                        const SizedBox(height: 30),
                        const Text("กรอกข้อมูลสำหรับการสร้างบัญชีของคุณ :",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black)),
                        const SizedBox(height: 25),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              controller: userName,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'ชื่อผู้ใช้',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                ),
                              ),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกชื่อผู้ใช้";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              controller: nameUser,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'ชื่อ-นามสกุล',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.account_circle_outlined,
                                ),
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              controller: emailUser,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'อีเมล',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                ),
                              ),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกอีเมล";
                                } else if (!isEmail(val)) {
                                  return "รูปแบบอีเมลไม่ถูกต้อง";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: phoneUser,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกเบอร์โทรศัพท์";
                                } else if (!isLength(val, 9, 32)) {
                                  return "กรุณากรอกเบอร์โทรศัพท์ให้ครบ";
                                } else {
                                  return null;
                                }
                              },
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'เบอร์โทรศัพท์',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.phone_android_outlined,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              obscureText: _isObscure1,
                              controller: pass1,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกรหัสผ่าน";
                                } else if (!isLength(val, 8, 32)) {
                                  return "กรุณากรอกขั้นต่ำ 8 ตัวอักษร";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                prefixIcon: const Icon(
                                  Icons.key_outlined,
                                ),
                                labelText: 'รหัสผ่าน',
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  highlightColor: color,
                                  splashColor: color,
                                  hoverColor: color,
                                  icon: Icon(
                                    _isObscure1
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure1 = !_isObscure1;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              obscureText: _isObscure2,
                              controller: pass2,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกรหัสผ่าน";
                                } else if (!isLength(val, 8, 32)) {
                                  return "กรุณากรอกขั้นต่ำ 8 ตัวอักษร";
                                } else if (val != pass1.text) {
                                  return "รหัสผ่านไม่ตรงกัน";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                prefixIcon: const Icon(
                                  Icons.key_outlined,
                                ),
                                labelText: 'ยืนยันรหัสผ่าน',
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  highlightColor: color,
                                  splashColor: color,
                                  hoverColor: color,
                                  icon: Icon(
                                    _isObscure2
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure2 = !_isObscure2;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              controller: adr,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'อาคาร/บ้านเลขที่',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.map_rounded,
                                ),
                              ),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกข้อมูล";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: DropdownButtonFormField2(
                              isDense: true,
                              decoration: selectDecoration(
                                  "จังหวัด", Icons.map_rounded),
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: DropdownButtonFormField2(
                              isDense: true,
                              decoration:
                                  selectDecoration("อำเภอ", Icons.map_rounded),
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: DropdownButtonFormField2(
                              isDense: true,
                              decoration:
                                  selectDecoration("ตำบล", Icons.map_rounded),
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Theme(
                            data: ThemeData(
                                primarySwatch: Colors.red,
                                fontFamily: "Prompt"),
                            child: TextFormField(
                              controller: postCode,
                              decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 10, 10, 0),
                                labelText: 'รหัสไปรษณีย์',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.map_rounded,
                                ),
                              ),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "กรุณากรอกรหัสไปรษณีย์";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xffaa1f2e),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ))),
                          onPressed: () {
                            _validate();
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 8, bottom: 8, left: 35, right: 35),
                            child: Text(
                              "สมัครสมาชิก",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: const Color(0xffaa1f2e),
                        //       borderRadius: BorderRadius.circular(15)),
                        //   child: const Padding(
                        //     padding: EdgeInsets.only(
                        //         top: 8, bottom: 8, left: 40, right: 40),
                        //     child: Text(
                        //       "สมัครสมาชิก",
                        //       style: TextStyle(
                        //         fontSize: 18,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 30,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text(
                        "*สมัครสมาชิก ยืนยันตัวตนทาง Email เข้าใช้งานได้ทันที*",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
    ]);
  }
}

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
