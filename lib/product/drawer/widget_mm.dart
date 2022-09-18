import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget datam() {
  return BootstrapContainer(
      padding: const EdgeInsets.only(left: 20, top: 0),
      fluid: true,
      children: [
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-12',
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "ตัวกรองสินค้า",
                        style: TextStyle(
                            fontSize: 15, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "เลือกประเภทสินค้าที่คุณต้องการ",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(height: 1, color: Colors.black12),
                  ),
                  const SizedBox(height: 20),
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
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(3)),
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
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
              )),
          BootstrapCol(
              sizes: 'col-12',
              child: Column(
                children: [
                  const SizedBox(height: 20),
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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(3)),
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
                      Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          child: const Icon(FontAwesomeIcons.chevronDown,
                              size: 18, color: Colors.black87)),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "ดูเพิ่มเติม",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              )),
          BootstrapCol(
              sizes: 'col-12',
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffed3023)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            child: Text(
                              "ล้าง",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffed3023)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffed3023)),
                              color: const Color(0xffed3023),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
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
