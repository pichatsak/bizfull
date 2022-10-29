import 'dart:convert';

import 'package:bizfull/checkout/widget_adddress.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/adr_db_view_model.dart';
import 'package:bizfull/models/adr_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';

import 'package:http/http.dart' as http;

class DialogShowAdr extends StatefulWidget {
  final ValueChanged<AdrDbViewModel> onValChange;
  final ValueChanged<String> onChoose;
  final ValueChanged<bool> onClickAdd;
  String adrChooseCur = "0";
  String typeDvs = "";
  DialogShowAdr(
      {Key? key,
      required this.onValChange,
      required this.onChoose,
      required this.adrChooseCur,
      required this.onClickAdd,
      required this.typeDvs})
      : super(key: key);

  @override
  State<DialogShowAdr> createState() => _DialogShowAdrState();
}

class _DialogShowAdrState extends State<DialogShowAdr> {
  final box = GetStorage();
  List<AdrDbViewModel> listAdr = [];
  bool isLoad = false;
  String adrChoose = "0";
  @override
  void initState() {
    super.initState();
    getAdrUser();
    adrChoose = widget.adrChooseCur;
    setState(() {});
  }

  Future<void> getAdrUser() async {
    listAdr = [];
    var urlF =
        "${Global.hostName}/adr_first.php?user_id=${box.read("user_id")}";
    var resF = await http.get(Uri.parse(urlF));
    var getDataF = await json.decode(resF.body);
    AdrViewModel adrViewModel = AdrViewModel.fromJson(getDataF["data"]);
    AdrDbViewModel getRowF = AdrDbViewModel(
        adrsId: 0,
        adrsName: adrViewModel.userName,
        adrsHome: adrViewModel.userAdr,
        adrsPhone: adrViewModel.phone,
        prov: adrViewModel.prov,
        provId: adrViewModel.provId,
        amp: adrViewModel.amp,
        ampId: adrViewModel.ampId,
        dict: adrViewModel.dict,
        dictId: adrViewModel.dictId,
        postCode: adrViewModel.postCode);
    listAdr.add(getRowF);
    var url =
        "${Global.hostName}/adr_all_user.php?user_id=${box.read("user_id")}";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        AdrDbViewModel getRow = AdrDbViewModel.fromJson(data);
        listAdr.add(getRow);
      }).toList();
    }

    setState(() {
      isLoad = true;
    });
  }

  final Addressradio addressradio = Addressradio.lafayette;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: widget.typeDvs == "pc" ? 600 : 500,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50, right: 20, left: 0, bottom: 100),
                  child: Column(children: [
                    ...listAdr
                        .map(
                          (item) => datadialogaddress1(item),
                        )
                        .toList()
                    // const Padding(
                    //     padding: EdgeInsets.only(left: 25, right: 5, top: 20),
                    //     child: Divider(thickness: 1.0)),
                    // datadialogaddress11(context, addressradio, setState),
                  ]),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "ที่อยู่ของฉัน",
                        style: TextStyle(
                            fontSize: 16.0, fontFamily: "Prompt-Medium"),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Material(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(7),
                                color: const Color.fromARGB(31, 143, 143, 143)),
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 30, right: 30),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            Navigator.of(context).pop();
                            widget.onClickAdd(true);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 10.0, left: 10, right: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 3),
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "เพิ่มที่อยู่ใหม่",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            widget.typeDvs == "pc"
                                ? Material(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(7),
                                      onTap: () => Navigator.pop(context),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black12),
                                            borderRadius:
                                                BorderRadius.circular(7),
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
                                  )
                                : const SizedBox(
                                    height: 0,
                                    width: 0,
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
                                widget
                                    .onValChange(listAdr[int.parse(adrChoose)]);
                                widget.onChoose(adrChoose);
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 20,
                                    right: 20),
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
                          ],
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
    );
  }

  Widget datadialogaddress1(AdrDbViewModel item) {
    return ListTile(
      title: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(item.adrsName,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black)),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 1, height: 20, color: Colors.black26)),
                  Text(item.adrsPhone,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.black54))
                ]),
                // InkWell(
                //   splashColor: Colors.transparent,
                //   hoverColor: Colors.transparent,
                //   highlightColor: Colors.transparent,
                //   onTap: () {
                //     Navigator.of(context).pop();
                //     showDialog<String>(
                //       barrierDismissible: false,
                //       context: context,
                //       builder: (BuildContext context) => AlertDialog(
                //         shape: const RoundedRectangleBorder(
                //             borderRadius:
                //                 BorderRadius.all(Radius.circular(10.0))),
                //         contentPadding: const EdgeInsets.only(top: 0.0),
                //         content: editdialog2(context, addressradio, setState),
                //       ),
                //     );
                //   },
                //   child: const Text("แก้ไข",
                //       style: TextStyle(fontSize: 13, color: Color(0xffed3023))),
                // )
              ],
            ),
            SizedBox(
              width: 330,
              child: Text(
                  "${item.adrsHome} ต.${item.dict} อ.${item.amp} จ.${item.prov} ${item.postCode}",
                  style: const TextStyle(fontSize: 13, color: Colors.black54)),
            ),
            const SizedBox(height: 10),
            // Row(
            //   children: [
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 1.5),
            //       child: const Icon(
            //         FontAwesomeIcons.solidCircleCheck,
            //         color: Color(0xffed3023),
            //         size: 15,
            //       ),
            //     ),
            //     const SizedBox(width: 5),
            //     // const Text("ค่าเริ่มต้น",
            //     //     style: TextStyle(fontSize: 13, color: Color(0xffed3023))),
            //   ],
            // ),
          ],
        ),
      ),
      leading: Radio<String>(
        activeColor: const Color(0xffa91f2e),
        value: listAdr.indexOf(item).toString(),
        groupValue: adrChoose,
        onChanged: (String? value) {
          setState(() {
            adrChoose = value!;
          });
        },
      ),
    );
  }
}
