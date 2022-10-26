import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget bankprofile() {
  double pAD;
  String add;
  double fM;
  double fM1;
  double pad1;
  double pad2;
  String nB;
  if (Device.width > 991) {
    pAD = 0;
    add = "pc";
    fM = 16;
    fM1 = 14;
    pad1 = 30;
    pad2 = 10; //20
    nB = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    add = "mobile";
    fM = 16;
    fM1 = 14;
    pad1 = 20;
    pad2 = 10;
    nB = "mobile";
  } else {
    pAD = 10;
    add = "mobile";
    fM = 15;
    fM1 = 13;
    pad1 = 10;
    pad2 = 10;
    nB = "mobile";
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                //   color: nB == "pc" ? const Color(0xfff3f3f3) : null,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: pad1, top: pad2, bottom: pad2, right: pad1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      nB == "pc"
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("บัญชีธนาคารของฉัน",
                                      style: TextStyle(
                                          fontSize: fM,
                                          fontFamily: "Prompt-Medium"))
                                ]),
                                Row(children: [
                                  Text("จัดการและตั้งค่าบัญชีธนาคารของคุณ",
                                      style: TextStyle(
                                          fontSize: fM1, color: Colors.black87))
                                ]),
                              ],
                            )
                          : Row(children: [
                              Text("เพิ่มบัญชีธนาคารของฉัน",
                                  style: TextStyle(
                                      fontSize: fM,
                                      fontFamily: "Prompt-Medium"))
                            ]),
                      add == "pc"
                          ? Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 8, bottom: 8),
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
                                      "เพิ่มบัญชีธนาคาร",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 7, right: 7, top: 5, bottom: 5),
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 3),
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  const SizedBox(
                    height: 200,
                    child: Center(
                        child: Text("คุณยังไม่มีบัญชีธนาคาร",
                            style: TextStyle(
                                fontSize: 16, color: Colors.black87))),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        )),
  ]);
}
