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
  if (Device.width > 1240) {
    sB = 269;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    sB = 153;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
  } 
  else if (Device.width >= 768 && Device.width <= 991) {
    sB = 113;
    pAD = 0;
    fM = 16;
    fM1 = 14;
    wS = 400;
  } else {
    sB = 0;
    pAD = 10;
    fM = 15;
    fM1 = 13;
    wS = double.maxFinite;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xfff3f3f3),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30, top: 20, bottom: 20, right: 30),
              child: Column(
                children: [
                  Row(children: [
                    Text("เปลี่ยนรหัสผ่าน",
                        style: TextStyle(
                            fontSize: fM, fontFamily: "Prompt-Medium"))
                  ]),
                  Row(children: [
                    Text("กรอกข้อมูลสำหรับตั้งค่ารหัสผ่านใหม่",
                        style: TextStyle(fontSize: fM1, color: Colors.black87))
                  ]),
                  const SizedBox(height: 15),
                  Container(height: 1, color: Colors.black12),
                  const SizedBox(height: 10),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
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
                                      BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
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
                                      BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3)),
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
                                            Radius.circular(3)),
                                        borderSide: BorderSide(
                                            color: Colors.black12, width: 1.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3)),
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 1.0),
                                      )),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(3),
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
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffed3023),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 8, bottom: 8),
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
