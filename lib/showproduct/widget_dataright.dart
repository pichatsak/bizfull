import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget dataright1(context) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              //    color: const Color(0xfff3f3f3)
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "🔥พร้อมส่งด่วน ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม หนานุ่ม ซับน้ำไว(สีเหลืองเทา) ผ้าเช็ดรถ ผ้าไมโครไฟเบ  ผ้าเช็ดรถ ผ้าเอนกประสงค์ ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม",
                    style: TextStyle(fontSize: 18, fontFamily: "Prompt-Medium"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 0.1,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color(0xffed3023),
                            width: 1.0,
                          ))),
                          child: const Text(
                            "4.9",
                            style: TextStyle(
                              color: Color(0xffed3023),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.star,
                            size: 16, color: Color(0xffed3023)),
                        const Padding(
                          padding: EdgeInsets.only(left: 1, right: 1),
                          child: Icon(Icons.star,
                              size: 16, color: Color(0xffed3023)),
                        ),
                        const Icon(Icons.star,
                            size: 16, color: Color(0xffed3023)),
                        const Padding(
                          padding: EdgeInsets.only(left: 1, right: 1),
                          child: Icon(Icons.star,
                              size: 16, color: Color(0xffed3023)),
                        ),
                        const Icon(
                          Icons.star,
                          size: 16,
                          color: Color(0xff777777),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(
                          width: 0.7,
                          color: Colors.black26,
                        ),
                        left: BorderSide(
                          width: 0.7,
                          color: Colors.black26,
                        ),
                      )),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 0.1,
                              ),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                width: 1.0,
                              ))),
                              child: const Text(
                                "6.5พัน",
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Ratings",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "17.4พัน",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          child: const Text(
                            "ขายแล้ว",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black45,
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "฿5,400",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black54,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: const [
                              Text(
                                "฿3,990",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Color(0xffed3023),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 3, right: 3, top: 1, bottom: 1),
                              child: Text(
                                "26% ส่วนลด",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 110,
                            child: Text(
                              "โค้ดส่วนลดจากร้านค้า",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 213, 215),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 4, right: 4, top: 1, bottom: 1),
                              child: Text(
                                "ลด ฿100",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffed3023)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 213, 215),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 4, right: 4, top: 1, bottom: 1),
                              child: Text(
                                "ลด ฿150",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffed3023)),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 110,
                            child: Text(
                              "ช้อปเพิ่มคุ้มกว่า",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 240, 213, 215),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  left: 4, right: 4, top: 1, bottom: 1),
                              child: Text(
                                "รับสินค้าฟรี",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xffed3023)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 110,
                      //       child: Text(
                      //         "การจัดส่ง",
                      //         style: TextStyle(
                      //             color: Colors.black87, fontSize: 12),
                      //         textAlign: TextAlign.start,
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Row(
                      //       children: [
                      //         SvgPicture.asset(
                      //           "images/car.svg",
                      //           color: Colors.black45,
                      //           width: 20,
                      //         ),
                      //         const SizedBox(
                      //           width: 5,
                      //         ),
                      //         const SizedBox(
                      //           width: 110,
                      //           child: Text(
                      //             "การจัดส่ง ถึง",
                      //             style: TextStyle(
                      //                 color: Colors.black87, fontSize: 12),
                      //           ),
                      //         ),
                      //         Row(
                      //           children: const [
                      //             Text(
                      //               "อำเภอธัญบุรี,จังหวัดปทุมธานี",
                      //               style: TextStyle(
                      //                   color: Colors.black, fontSize: 12),
                      //             ),
                      //             Icon(
                      //               Icons.keyboard_arrow_down_outlined,
                      //               color: Colors.black54,
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 135,
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Row(
                      //       children: [
                      //         const SizedBox(
                      //           width: 110,
                      //           child: Text(
                      //             "ค่าจัดส่ง",
                      //             style: TextStyle(
                      //                 color: Colors.black87, fontSize: 12),
                      //           ),
                      //         ),
                      //         Row(
                      //           children: const [
                      //             Text(
                      //               "฿45",
                      //               style: TextStyle(
                      //                   color: Colors.black, fontSize: 12),
                      //             ),
                      //             Icon(
                      //               Icons.keyboard_arrow_down_outlined,
                      //               color: Colors.black54,
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 110,
                            child: Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "GlassyX",
                                style: TextStyle(
                                  color: Color.fromARGB(186, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border: Border.all(
                                            color: const Color(0xffed3023))),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX",
                                        style:
                                            TextStyle(color: Color(0xffed3023)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX500",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX500",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX500",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX500",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                        border:
                                            Border.all(color: Colors.black26)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Text(
                                        "GlassyX500",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 110,
                            child: Text(
                              "จำนวน",
                              style: TextStyle(
                                  color: Colors.black87, fontSize: 12),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          left:
                                              BorderSide(color: Colors.black26),
                                          top:
                                              BorderSide(color: Colors.black26),
                                          bottom: BorderSide(
                                              color: Colors.black26))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Icon(
                                      Icons.remove,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    cursorWidth: 1,
                                    textAlign: TextAlign.center,
                                    initialValue: '1',
                                    style: const TextStyle(color: Colors.black),
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          EdgeInsets.fromLTRB(12, 12, 12, 0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(0.0))),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 6,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            right: BorderSide(
                                                color: Colors.black26),
                                            top: BorderSide(
                                                color: Colors.black26),
                                            bottom: BorderSide(
                                                color: Colors.black26))),
                                    child: const Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.add_rounded,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "มีสินค้าทั้งหมด 2835 ชิ้น",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 12),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: InkWell(onTap: () {
                              Navigator.of(context).pushNamed("/shopcart");
                            },
                              child: Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 240, 213, 215),
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(
                                        color: const Color(0xffed3023))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 12, bottom: 12),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 3),
                                          child: const Icon(
                                            FontAwesomeIcons.bagShopping,
                                            size: 16,
                                            color: Color(0xffed3023),
                                          )),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "เพิ่มไปยังรถเข็น",
                                        style:
                                            TextStyle(color: Color(0xffed3023)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffed3023),
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: const Color(0xffed3023))),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 25, top: 12, bottom: 12),
                                child: Row(
                                  children: const [
                                    Text(
                                      "ซื้อสินค้า",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
  ]);
}