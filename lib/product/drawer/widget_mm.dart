import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget datam() {
  return BootstrapContainer(
      padding: const EdgeInsets.only(left: 0, top: 0),
      fluid: true,
      children: [
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-12',
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.only(left: 0, right: 0, top: 0),
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/dr.png"),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "ตัวกรองสินค้า",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Prompt-Medium",
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  "เลือกประเภทสินค้าที่คุณต้องการ",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 10),
                  //   child: Container(height: 1, color: Colors.black12),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xfff3f3f3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 15, top: 10),
                        child: Column(
                          children: [
                            // const SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(bottom: 8.5),
                                    child: const Icon(
                                      FontAwesomeIcons.basketShopping,
                                      size: 18,
                                      color: Color(0xffa91f2e),
                                    )),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "ประเภทสินค้า",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(3),
                                  onTap: () {},
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0xffed3023)),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: const Color(0xffed3023)),
                                      ),
                                      SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 2, left: 1),
                                              child: const Icon(
                                                FontAwesomeIcons.check,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "สินค้าน่าชิป",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                InkWell(
                                  borderRadius: BorderRadius.circular(3),
                                  onTap: () {},
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black12),
                                        borderRadius: BorderRadius.circular(3)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "สินค้าน่าช้อป",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(3),
                                    onTap: () {},
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 15,
                                          width: 15,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffed3023)),
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                              color: const Color(0xffed3023)),
                                        ),
                                        SizedBox(
                                            height: 15,
                                            width: 15,
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                    left: 0.5),
                                                child: const Icon(
                                                  FontAwesomeIcons.check,
                                                  color: Colors.white,
                                                  size: 11,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "ประเทศไทย",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(3),
                                    onTap: () {},
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black12),
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "ญี่ปุ่น",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(3),
                                    onTap: () {},
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black12),
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "อเมริกา",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(3),
                                    onTap: () {},
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black12),
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    "เกาหลี",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
          BootstrapCol(
              sizes: 'col-12',
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 15, top: 10),
                    child: Column(
                      children: [
                        // const SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 1),
                                child: const Icon(
                                  FontAwesomeIcons.tags,
                                  size: 18,
                                  color: Color(0xffa91f2e),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "หมวดหมู่สินค้า",
                              style: TextStyle(
                                  fontSize: 16, fontFamily: "Prompt-Medium"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(3),
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Flexible(
                                child: Text(
                                  "รองเท้า",
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(3),
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Flexible(
                                child: Text(
                                  "กระเป๋า",
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(3),
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Flexible(
                                child: Text(
                                  "เสื้อผ้า",
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(3),
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Flexible(
                                child: Text(
                                  "เครื่องมือสื่อสาร",
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(3),
                                onTap: () {},
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(3)),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Flexible(
                                child: Text(
                                  "อุปกรณ์ไฟฟ้า",
                                  style: TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(3),
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 3),
                                        child: const Icon(
                                            FontAwesomeIcons.chevronDown,
                                            size: 18,
                                            color: Colors.black87)),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      "ดูเพิ่มเติม",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          BootstrapCol(
              sizes: 'col-12',
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffed3023)),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 6, bottom: 6, left: 15, right: 15),
                              child: Text(
                                "ล้าง",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffed3023)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
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
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 6, bottom: 6, left: 0, right: 0),
                            child: Text(
                              "ตกลง",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ])
      ]);
}
