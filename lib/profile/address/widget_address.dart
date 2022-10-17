import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/profile/address/widget_dialog_address.dart';
import 'package:bizfull/profile/address/widget_dialog_address_mobile.dart';

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
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      const Text("พิเชฐศักดิ์ ดุเหว่า",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black)),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 1,
                                              height: 20,
                                              color: Colors.black26)),
                                      const Text("0932430369",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black54))
                                    ]),
                                    const SizedBox(
                                      width: 350,
                                      child: Text(
                                          "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black54)),
                                    ),
                                    const SizedBox(height: 10),
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //       border: Border.all(
                                    //           color: const Color(0xffed3023))),
                                    //   child: const Padding(
                                    //     padding: EdgeInsets.only(
                                    //         top: 2,
                                    //         bottom: 2,
                                    //         left: 10,
                                    //         right: 10),
                                    //     child: Text("ค่าเริ่มต้น",
                                    //         style: TextStyle(
                                    //             fontSize: 13,
                                    //             color: Color(0xffed3023))),
                                    //   ),
                                    // ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 1.5),
                                          child: const Icon(
                                            FontAwesomeIcons.solidCircleCheck,
                                            color: Color(0xffed3023),
                                            size: 15,
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text("ค่าเริ่มต้น",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text("แก้ไข",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xffed3023))),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 10,
                                            right: 10),
                                        child: Text("ตั้งเป็นค่าตั้งต้น",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black45)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Card(
                              margin: const EdgeInsets.all(0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          const Text("พิเชฐศักดิ์ ดุเหว่า",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                  width: 1,
                                                  height: 20,
                                                  color: Colors.black26)),
                                          const Text("0932430369",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black54))
                                        ]),
                                        const SizedBox(
                                          width: 350,
                                          child: Text(
                                              "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black54)),
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 1.5),
                                                  child: const Icon(
                                                    FontAwesomeIcons
                                                        .solidCircleCheck,
                                                    color: Color(0xffed3023),
                                                    size: 15,
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                const Text("ค่าเริ่มต้น",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xffed3023))),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15,
                                                        right: 15,
                                                        top: 5,
                                                        bottom: 5),
                                                    child: Text("ใช้งาน",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors
                                                                .black54)),
                                                  ),
                                                ),
                                                const SizedBox(width: 10),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.orange,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15,
                                                        right: 15,
                                                        top: 5,
                                                        bottom: 5),
                                                    child: Text("แก้ไข",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                // Container(
                                                //   decoration: BoxDecoration(
                                                //       border: Border.all(
                                                //           color: Colors.black26)),
                                                //   child: const Padding(
                                                //     padding: EdgeInsets.only(
                                                //         top: 5,
                                                //         bottom: 5,
                                                //         left: 10,
                                                //         right: 10),
                                                //     child: Text("ตั้งเป็นค่าตั้งต้น",
                                                //         style: TextStyle(
                                                //             fontSize: 13,
                                                //             color: Colors.black45)),
                                                //   ),
                                                // ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  SizedBox(height: tS),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  Padding(
                      padding: EdgeInsets.only(top: h1),
                      child: add == "pc"
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      const Text("พิเชฐศักดิ์ ดุเหว่า",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black)),
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                              width: 1,
                                              height: 20,
                                              color: Colors.black26)),
                                      const Text("0932430369",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black54))
                                    ]),
                                    const SizedBox(
                                      width: 350,
                                      child: Text(
                                          "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black54)),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("แก้ไข",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                        SizedBox(width: 10),
                                        Text("ลบ",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black45),
                                          borderRadius:
                                              BorderRadius.circular(7)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 10,
                                            right: 10),
                                        child: Text("ตั้งเป็นค่าตั้งต้น",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Card(
                              margin: const EdgeInsets.all(0),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(children: [
                                          const Text("พิเชฐศักดิ์ ดุเหว่า",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black)),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                  width: 1,
                                                  height: 20,
                                                  color: Colors.black26)),
                                          const Text("0932430369",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black54))
                                        ]),
                                        const SizedBox(
                                          width: 350,
                                          child: Text(
                                              "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black54)),
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffed3023),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text("ใช้งาน",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text("แก้ไข",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffee602e),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text("ลบ",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        )),
  ]);
}
