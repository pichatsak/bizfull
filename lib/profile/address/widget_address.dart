import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/profile/address/data/widget_data1_mobile.dart';
import 'package:bizfull/profile/address/data/widget_data1_pc.dart';
import 'package:bizfull/profile/address/data/widget_data2_mobile.dart';
import 'package:bizfull/profile/address/data/widget_data2_pc.dart';
import 'package:bizfull/profile/address/dialog/widget_dialog_address.dart';
import 'package:bizfull/profile/address/dialog/widget_dialog_address_mobile.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget addressprofile(context) {
  double pAD;
  String add;
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
    add = "pc";
    fM = 16;
    fM1 = 14;
    pad1 = 30;
    pad2 = 10; //20
    nB = "pc";
    h1 = 20;
    h2 = 15;
    tS = 25;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    add = "mobile";
    fM = 16;
    fM1 = 14;
    pad1 = 20;
    pad2 = 10;
    nB = "mobile";
    h1 = 15;
    h2 = 5;
    tS = 0;
  } else {
    pAD = 10;
    add = "mobile";
    fM = 15;
    fM1 = 13;
    pad1 = 10;
    pad2 = 10;
    nB = "mobile";
    h1 = 15;
    h2 = 5;
    tS = 0;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                //      color: nB == "pc" ? const Color(0xfff3f3f3) : null,
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
                                  Text("ที่อยู่ของฉัน",
                                      style: TextStyle(
                                          fontSize: fM,
                                          fontFamily: "Prompt-Medium"))
                                ]),
                                Row(children: [
                                  Text(
                                      "จัดการและตั้งค่าข้อมูลที่อยู่ของบัญชีผู้ใช้นี้",
                                      style: TextStyle(
                                          fontSize: fM1, color: Colors.black87))
                                ]),
                              ],
                            )
                          : Row(children: [
                              Text("เพิ่มที่อยู่ของฉัน",
                                  style: TextStyle(
                                      fontSize: fM,
                                      fontFamily: "Prompt-Medium"))
                            ]),
                      add == "pc"
                          ? ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffed3023)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ))),
                              onPressed: () {
                                showDialog<String>(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding:
                                        const EdgeInsets.only(top: 0.0),
                                    content: dialogaddress(context),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5, right: 5, top: 8, bottom: 8),
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
                                      "เพิ่มที่อยู่",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                backgroundColor: const Color(0xffed3023),
                                padding: const EdgeInsets.only(
                                    left: 7, right: 7, top: 5, bottom: 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              onPressed: () {
                                showDialog<String>(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    insetPadding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 24.0),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0))),
                                    contentPadding:
                                        const EdgeInsets.only(top: 0.0),
                                    content: dialogaddressmobile(context),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 5, bottom: 5),
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
                  SizedBox(height: h2),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  Padding(
                      padding: EdgeInsets.only(top: h1),
                      child: add == "pc"
                          ? data1pc(context)
                          : data1mobile(context)),
                  SizedBox(height: tS),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  Padding(
                      padding: EdgeInsets.only(top: h1),
                      child: add == "pc"
                          ? data2PC(context)
                          : data2mobile(context)),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        )),
  ]);
}
