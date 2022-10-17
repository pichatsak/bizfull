import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget gsendmail() {
  double wP;
  double zH;
  double zB;
  double pM;
  double fMM;
  double fMM1;
  String tWY;
  if (Device.width > 991) {
    wP = 664;
    zH = 0;
    pM = 30;
    zB = 15;
    fMM = 16;
    fMM1 = 14;
    tWY = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    wP = 664;
    zH = 0;
    zB = 35;
    pM = 20;
    fMM = 16;
    fMM1 = 14;
    tWY = "mobile";
  } else if (Device.width >= 576 && Device.width <= 767) {
    wP = 664;
    zH = 0;
    zB = 35;
    pM = 20;
    fMM = 16;
    fMM1 = 14;
    tWY = "mobile";
  } else {
    wP = double.infinity;
    zH = 25;
    zB = 35;
    pM = 20;
    fMM = 15;
    fMM1 = 13;
    tWY = "mobile";
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: tWY == "pc"
            ? Center(
                child: Container(
                  width: wP,
                  decoration: BoxDecoration(
                      //    color: Color(0xfff3f3f3),
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: EdgeInsets.all(pM),
                    child: Column(
                      children: [
                        Row(children: [
                          Text("แจ้งปัญหาการใช้งานเพิ่มเติม",
                              style: TextStyle(
                                  fontSize: fMM, fontFamily: "Prompt-Medium"))
                        ]),
                        Row(children: [
                          Text(
                              "หากคุณมีคำถามหรือคำแนะนำอื่นๆ สามารถแจ้งเราได้ที่นี่",
                              style: TextStyle(
                                  fontSize: fMM1, color: Colors.black87))
                        ]),
                        const SizedBox(height: 15),
                        Container(height: 1, color: Colors.black12),
                        const SizedBox(height: 30),
                        Column(
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
                              const Text("อีเมลของคุณ",
                                  style: TextStyle(fontSize: 13))
                            ]),
                            const SizedBox(height: 5),
                            TextFormField(
                              cursorColor: Colors.red,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              decoration: const InputDecoration(
                                  hintText: 'Input',
                                  hintStyle: TextStyle(color: Colors.black38),
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
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.0),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
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
                              const Text("หมายเลขโทรศัพท์",
                                  style: TextStyle(fontSize: 13))
                            ]),
                            const SizedBox(height: 5),
                            TextFormField(
                              cursorColor: Colors.red,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              decoration: const InputDecoration(
                                  hintText: 'Input',
                                  hintStyle: TextStyle(color: Colors.black38),
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
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.0),
                                  )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: const [
                            Text("ข้อมูลเพิ่มเติม",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "Prompt-Medium")),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                                "กรุณาแจ้งเพิ่มเติม เกี่ยวกับปัญหาที่ท่านได้รับ",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const TextField(
                          cursorColor: Colors.red,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Input",
                              hintStyle: TextStyle(color: Colors.black38),
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
                          maxLines: 3,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: const [
                            Text("อัปโหลดไฟล์",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "Prompt-Medium")),
                          ],
                        ),
                        const SizedBox(
                          width: double.infinity,
                          child: Text(
                              "สามารถอัพโหลดไฟล์ jpg / jpeg / png / pdf. ได้สูงสุด 5 ไฟล์ต่อครั้ง และต้องมีขนาดไม่เกิน 4.5MB",
                              style: TextStyle(fontSize: 13)),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(7),
                              onTap: () {},
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.black12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 3),
                                          child: const Icon(
                                            FontAwesomeIcons.upload,
                                            color: Color(0xffa91f2e),
                                            size: 14,
                                          ),
                                        ),
                                        const SizedBox(width: 7),
                                        const Text("อัพโหลดรูปภาพ",
                                            style: TextStyle(fontSize: 13))
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: zB),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffed3023)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ))),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 8, bottom: 8),
                                child: Row(
                                  children: const [
                                    Text(
                                      "แจ้งปัญหา",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: zH),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                width: wP,
                decoration: const BoxDecoration(
                    // color: Color(0xfff3f3f3), border: Border.all(color: Colors.black12),
                    // borderRadius: BorderRadius.circular(7)
                    ),
                child: Padding(
                  padding: EdgeInsets.all(pM),
                  child: Column(
                    children: [
                      // Row(children: [
                      //   Text("แจ้งปัญหาการใช้งานเพิ่มเติม",
                      //       style: TextStyle(
                      //           fontSize: fMM, fontFamily: "Prompt-Medium"))
                      // ]),
                      // Row(children: [
                      //   Text(
                      //       "หากคุณมีคำถามหรือคำแนะนำอื่นๆ สามารถแจ้งเราได้ที่นี่",
                      //       style: TextStyle(
                      //           fontSize: fMM1, color: Colors.black87))
                      // ]),
                      // const SizedBox(height: 15),
                      // Container(height: 1, color: Colors.black12),
                      // const SizedBox(height: 30),
                      SizedBox(
                        width: 600,
                        child: Column(
                          children: [
                            Column(
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
                                  const Text("อีเมลของคุณ",
                                      style: TextStyle(fontSize: 13))
                                ]),
                                const SizedBox(height: 5),
                                TextFormField(
                                  cursorColor: Colors.red,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  decoration: const InputDecoration(
                                      hintText: 'Input',
                                      hintStyle:
                                          TextStyle(color: Colors.black38),
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
                            const SizedBox(height: 20),
                            Column(
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
                                  const Text("หมายเลขโทรศัพท์",
                                      style: TextStyle(fontSize: 13))
                                ]),
                                const SizedBox(height: 5),
                                TextFormField(
                                  cursorColor: Colors.red,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  decoration: const InputDecoration(
                                      hintText: 'Input',
                                      hintStyle:
                                          TextStyle(color: Colors.black38),
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
                            const SizedBox(height: 30),
                            Row(
                              children: const [
                                Text("ข้อมูลเพิ่มเติม",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Prompt-Medium")),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                    "กรุณาแจ้งเพิ่มเติม เกี่ยวกับปัญหาที่ท่านได้รับ",
                                    style: TextStyle(fontSize: 13)),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              cursorColor: Colors.red,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                              decoration: InputDecoration(
                                  hintText: "Input",
                                  hintStyle: TextStyle(color: Colors.black38),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(
                                        color: Colors.black12, width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7)),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 1.0),
                                  )),
                              maxLines: 3,
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: const [
                                Text("อัปโหลดไฟล์",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Prompt-Medium")),
                              ],
                            ),
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                  "สามารถอัพโหลดไฟล์ jpg / jpeg / png / pdf. ได้สูงสุด 5 ไฟล์ต่อครั้ง และต้องมีขนาดไม่เกิน 4.5MB",
                                  style: TextStyle(fontSize: 13)),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(7),
                                  onTap: () {},
                                  child: Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        border:
                                            Border.all(color: Colors.black12)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 3),
                                              child: const Icon(
                                                FontAwesomeIcons.upload,
                                                color: Color(0xffa91f2e),
                                                size: 14,
                                              ),
                                            ),
                                            const SizedBox(width: 7),
                                            const Text("อัพโหลดรูปภาพ",
                                                style: TextStyle(fontSize: 13))
                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: zB),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffed3023)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 8, bottom: 8),
                              child: Row(
                                children: const [
                                  Text(
                                    "แจ้งปัญหา",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: zH),
                    ],
                  ),
                ),
              ))
  ]);
}
