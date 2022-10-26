import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget resetpasswordprofile() {
  double sB;
  double pAD;
  double fM;
  double fM1;
  double wS;
  double pad1;
  double pad2;
  String nB;
  double h1;
  double h2;
  double tS;
  if (Device.width > 1240) {
    sB = 269;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
    pad1 = 30;
    pad2 = 10; //20
    nB = "pc";
    h1 = 15;
    h2 = 10;
    tS = 15;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    sB = 153;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
    pad1 = 30;
    pad2 = 10; //20
    nB = "pc";
    h1 = 15;
    h2 = 10;
    tS = 15;
  } else if (Device.width >= 768 && Device.width <= 991) {
    sB = 113;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
    pad1 = 20;
    pad2 = 10;
    nB = "mobile";
    h1 = 0;
    h2 = 0;
    tS = 10;
  } else {
    sB = 0;
    pAD = 10;
    fM = 15;
    fM1 = 13;
    wS = double.maxFinite;
    pad1 = 10;
    pad2 = 10;
    nB = "mobile";
    h1 = 0;
    h2 = 0;
    tS = 5;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                //     color: nB == "pc" ? const Color(0xfff3f3f3) : null,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: pad1, top: pad2, bottom: pad2, right: pad1),
              child: Column(
                children: [
                  nB == "pc"
                      ? Row(children: [
                          Text("เปลี่ยนรหัสผ่าน",
                              style: TextStyle(
                                  fontSize: fM, fontFamily: "Prompt-Medium"))
                        ])
                      : Container(),
                  nB == "pc"
                      ? Row(children: [
                          Text("กรอกข้อมูลสำหรับตั้งค่ารหัสผ่านใหม่",
                              style: TextStyle(
                                  fontSize: fM1, color: Colors.black87))
                        ])
                      : Container(),
                  SizedBox(height: h1),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  SizedBox(height: h2),
                  Padding(
                    padding: EdgeInsets.only(top: tS, left: 15, right: 15),
                    child: Column(
                      children: [
                        Row(children: [
                          SizedBox(width: sB),
                          Container(
                            margin: const EdgeInsets.only(bottom: 3),
                            child: const Icon(
                              FontAwesomeIcons.key,
                              color: Color(0xffa91f2e),
                              size: 14,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const Text("รหัสผ่านใหม่",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54))
                        ]),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: wS,
                          child: TextFormField(
                            cursorColor: Colors.red,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                            decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 13, 10, 13),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1.0),
                                )),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(children: [
                          SizedBox(width: sB),
                          Container(
                            margin: const EdgeInsets.only(bottom: 3),
                            child: const Icon(
                              FontAwesomeIcons.key,
                              color: Color(0xffa91f2e),
                              size: 14,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const Text("ยืนยันรหัสผ่าน",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54))
                        ]),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: wS,
                          child: TextFormField(
                            cursorColor: Colors.red,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                            decoration: const InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 13, 10, 13),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7)),
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 1.0),
                                )),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(children: [
                          SizedBox(width: sB),
                          Container(
                            margin: const EdgeInsets.only(bottom: 3),
                            child: const Icon(
                              FontAwesomeIcons.lock,
                              color: Color(0xffa91f2e),
                              size: 14,
                            ),
                          ),
                          const SizedBox(width: 7),
                          const Text("รหัสการตรวจสอบ",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black54))
                        ]),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: wS,
                          child: Row(
                            children: [
                              Flexible(
                                child: TextFormField(
                                  cursorColor: Colors.red,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  decoration: const InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 13, 10, 13),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7)),
                                        borderSide: BorderSide(
                                            color: Colors.black12, width: 1.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7)),
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 1.0),
                                      )),
                                ),
                              ),
                              const SizedBox(width: 8),
                              InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(7),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(7),
                                      color: const Color.fromARGB(
                                          31, 180, 179, 179)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        top: 9, bottom: 9, left: 10, right: 10),
                                    child: Text("ส่งรหัสการตรวจสอบ",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffed3023)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 8, bottom: 8),
                            child: Row(
                              children: const [
                                Text(
                                  "บันทึกรหัสผ่านใหม่",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
  ]);
}
