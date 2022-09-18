import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dataprofile(setState) {
  double pAD;
  double fM;
  double fM1;
  if (Device.width > 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
  } else {
    pAD = 10;
    fM = 15;
    fM1 = 13;
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
                    Text("ข้อมูลของฉัน",
                        style: TextStyle(
                            fontSize: fM, fontFamily: "Prompt-Medium"))
                  ]),
                  Row(children: [
                    Text("จัดการข้อมูลส่วนตัวเพื่อความปลอดภัยของบัญชีนี้",
                        style: TextStyle(fontSize: fM1, color: Colors.black87))
                  ]),
                  const SizedBox(height: 15),
                  Container(height: 1, color: Colors.black12),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: BootstrapRow(children: <BootstrapCol>[
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
