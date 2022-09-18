import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget addressprofile() {
  double pAD;
  String add;
  double fM;
  double fM1;
  if (Device.width > 991) {
    pAD = 0;
    add = "pc";
    fM = 16;
    fM1 = 14;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    add = "pc";
    fM = 16;
    fM1 = 14;
  } else {
    pAD = 10;
    add = "mobile";
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text("ที่อยู่ของฉัน",
                                style: TextStyle(
                                    fontSize: fM, fontFamily: "Prompt-Medium"))
                          ]),
                          Row(children: [
                            Text(
                                "จัดการและตั้งค่าข้อมูลที่อยู่ของบัญชีผู้ใช้นี้",
                                style: TextStyle(
                                    fontSize: fM1, color: Colors.black87))
                          ]),
                        ],
                      ),
                      add == "pc"
                          ? Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(2),
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
                                      "เพิ่มที่อยู่",
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
                  Container(height: 1, color: Colors.black12),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: const Color(0xffed3023))),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            top: 2,
                                            bottom: 2,
                                            left: 10,
                                            right: 10),
                                        child: Text("ค่าเริ่มต้น",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                      ),
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
                                          border: Border.all(
                                              color: Colors.black26)),
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
                          : Column(
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
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffed3023))),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 10,
                                                right: 10),
                                            child: Text("ค่าเริ่มต้น",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xffed3023))),
                                          ),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26)),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 1,
                                                    bottom: 1),
                                                child: Text("ใช้งาน",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black54)),
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            const Text("แก้ไข",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xffed3023))),
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
                            )),
                  const SizedBox(height: 25),
                  Container(height: 1, color: Colors.black12),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
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
                                          border: Border.all(
                                              color: Colors.black45)),
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
                          : Column(
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
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black54)),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                left: 8,
                                                right: 8,
                                                top: 1,
                                                bottom: 1),
                                            child: Text("ใช้งาน",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black87)),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        const Text("แก้ไข",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                        const SizedBox(width: 15),
                                        const Text("ลบ",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xffed3023))),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                  const SizedBox(height: 30)
                ],
              ),
            ),
          ),
        )),
  ]);
}
