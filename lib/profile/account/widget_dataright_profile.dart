import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dataprofile(setState) {
  double pAD;
  double fM;
  double fM1;
  double pad1;
  double pad2;
  String nB;
  double h1;
  double h2;
  double tS;
  if (Device.width > 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
    pad1 = 30;
    pad2 = 10;
    nB = "pc";
    h1 = 15;
    h2 = 10;
    tS = 15;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
    pad1 = 10;
    pad2 = 10;
    nB = "mobile";
    h1 = 0;
    h2 = 0;
    tS = 10;
  } else {
    pAD = 10;
    fM = 15;
    fM1 = 13;
    pad1 = 0;
    pad2 = 0;
    nB = "mobile";
    h1 = 0;
    h2 = 0;
    tS = 10;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                //    color: nB == "pc" ? const Color(0xfff3f3f3) : null,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: pad1, top: pad2, bottom: pad2, right: pad1),
              child: Column(
                children: [
                  nB == "pc"
                      ? Row(children: [
                          Text("ข้อมูลของฉัน",
                              style: TextStyle(
                                  fontSize: fM, fontFamily: "Prompt-Medium"))
                        ])
                      : Container(),
                  nB == "pc"
                      ? Row(children: [
                          Text("จัดการข้อมูลส่วนตัวเพื่อความปลอดภัยของบัญชีนี้",
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
                    padding: const EdgeInsets.all(5.0),
                    child: BootstrapRow(children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-lg-6 col-12 col-sm-12 col-md-12',
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: tS, left: 15, right: 15),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.userPen,
                                      color: Color(0xffa91f2e),
                                      size: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  const Text("ชื่อผู้ใช้",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black54))
                                ]),
                                const SizedBox(height: 5),
                                TextFormField(
                                  cursorColor: Colors.red,
                                  initialValue: 'พิเชฐศักดิ์ ดุเหว่า',
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
                              ],
                            ),
                          )),
                      BootstrapCol(
                          sizes: 'col-lg-6 col-12 col-sm-12 col-md-12',
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 1),
                                    child: const Icon(
                                      FontAwesomeIcons.solidEnvelope,
                                      color: Color(0xffa91f2e),
                                      size: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  const Text("อีเมล",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black54))
                                ]),
                                const SizedBox(height: 5),
                                TextFormField(
                                  cursorColor: Colors.red,
                                  initialValue: 'sookma28@gmail.com',
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
                              ],
                            ),
                          )),
                      BootstrapCol(
                          sizes: 'col-lg-6 col-12 col-sm-12 col-md-12',
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            child: Column(
                              children: [
                                Row(children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.mobileButton,
                                      color: Color(0xffa91f2e),
                                      size: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  const Text("เบอร์โทร",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black54))
                                ]),
                                const SizedBox(height: 5),
                                TextFormField(
                                  cursorColor: Colors.red,
                                  initialValue: '0932430369',
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
                              ],
                            ),
                          )),
                      BootstrapCol(
                          sizes: 'col-12',
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
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
                                          "บันทึก",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ]),
                  )
                ],
              ),
            ),
          ),
        )),
  ]);
}
