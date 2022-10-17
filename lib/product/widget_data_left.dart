import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget dataleft() {
  return BootstrapContainer(
      padding: const EdgeInsets.only(left: 20, top: 10),
      fluid: true,
      children: [
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-12',
              child: Column(
                children: [
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
                      Stack(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffed3023)),
                                borderRadius: BorderRadius.circular(3),
                                color: const Color(0xffed3023)),
                          ),
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: const EdgeInsets.only(bottom: 2,left: 1),
                                  child: const Icon(
                                    FontAwesomeIcons.check,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ))
                        ],
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
                         Stack(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xffed3023)),
                                borderRadius: BorderRadius.circular(3), color: const Color(0xffed3023)),
                          ),
                           SizedBox(
                              height: 15,
                              width: 15,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container( margin: const EdgeInsets.only(left: 0.5),
                                  child: const Icon(
                                    FontAwesomeIcons.check,
                                   color: Colors.white,
                                    size: 11,
                                  ),
                                ),
                              ))
                        ],
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
                  const SizedBox(height: 30),
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
                        style: TextStyle(
                            fontSize: 14, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),

                  // Theme(
                  //   data: ThemeData(
                  //       primarySwatch: Colors.red,
                  //       dividerColor: Colors.transparent,
                  //       fontFamily: "Prompt"),
                  //   child: ListTileTheme(
                  //     contentPadding: const EdgeInsets.all(0),

                  //     dense: true,
                  //     horizontalTitleGap: 0.0,
                  //     minLeadingWidth: 0,
                  //     // contentPadding: const EdgeInsets.only(right: 0),
                  //     child: ExpansionTile(
                  //       iconColor: const Color(0xffed3023),
                  //       backgroundColor: const Color(0xfffafafa),
                  //       tilePadding: const EdgeInsets.all(0),

                  //       controlAffinity: ListTileControlAffinity.leading,

                  //       maintainState: true,
                  //       title: Row(
                  //         children: const [
                  //           // Container(
                  //           //   margin: const EdgeInsets.only(bottom: 6),
                  //           //   child: const Icon(
                  //           //     FontAwesomeIcons.chevronDown,
                  //           //     size: 16,
                  //           //   ),
                  //           // ),
                  //           SizedBox(
                  //             width: 15,
                  //           ),
                  //           Text(
                  //             'ดูเพิ่มเติม',
                  //             style: TextStyle(
                  //                 fontSize: 14, fontFamily: "Prompt-Medium"),
                  //           ),
                  //         ],
                  //       ),
                  //       collapsedIconColor: Colors.black,
                  //       collapsedBackgroundColor: const Color(0xfffafafa),
                  //       // subtitle: Text(
                  //       //     'Trailing expansion arrow icon'),
                  //       children: <Widget>[
                  //         ListTile(
                  //           dense: true,
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: 0.0, vertical: 0.0),
                  //           visualDensity: const VisualDensity(
                  //             horizontal: 0,
                  //             vertical: -3,
                  //           ),
                  //           title: Padding(
                  //             padding: const EdgeInsets.only(right: 20),
                  //             child: Row(
                  //               children: [
                  //                 Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                   decoration: BoxDecoration(
                  //                       border:
                  //                           Border.all(color: Colors.black12),
                  //                       borderRadius: BorderRadius.circular(3)),
                  //                 ),
                  //                 const SizedBox(
                  //                   width: 15,
                  //                 ),
                  //                 const Flexible(
                  //                   child: Text(
                  //                     "เครื่องมือสื่อสาร",
                  //                     style: TextStyle(fontSize: 14),
                  //                     overflow: TextOverflow.ellipsis,
                  //                     maxLines: 1,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         ListTile(
                  //           dense: true,
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: 0.0, vertical: 0.0),
                  //           visualDensity: const VisualDensity(
                  //               horizontal: 0, vertical: -3),
                  //           title: Padding(
                  //             padding: const EdgeInsets.only(right: 20),
                  //             child: Row(
                  //               children: [
                  //                 Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                   decoration: BoxDecoration(
                  //                       border:
                  //                           Border.all(color: Colors.black12),
                  //                       borderRadius: BorderRadius.circular(3)),
                  //                 ),
                  //                 const SizedBox(
                  //                   width: 15,
                  //                 ),
                  //                 const Flexible(
                  //                   child: Text(
                  //                     "อุปกรณ์ไฟฟ้า",
                  //                     style: TextStyle(fontSize: 14),
                  //                     overflow: TextOverflow.ellipsis,
                  //                     maxLines: 1,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         ListTile(
                  //           dense: true,
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: 0.0, vertical: 0.0),
                  //           visualDensity: const VisualDensity(
                  //               horizontal: 0, vertical: -3),
                  //           title: Padding(
                  //             padding: const EdgeInsets.only(right: 20),
                  //             child: Row(
                  //               children: [
                  //                 Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                   decoration: BoxDecoration(
                  //                       border:
                  //                           Border.all(color: Colors.black12),
                  //                       borderRadius: BorderRadius.circular(3)),
                  //                 ),
                  //                 const SizedBox(
                  //                   width: 15,
                  //                 ),
                  //                 const Flexible(
                  //                   child: Text(
                  //                     "สินค้าเด็ก",
                  //                     style: TextStyle(fontSize: 14),
                  //                     overflow: TextOverflow.ellipsis,
                  //                     maxLines: 1,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //         ListTile(
                  //           dense: true,
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: 0.0, vertical: 0.0),
                  //           visualDensity: const VisualDensity(
                  //               horizontal: 0, vertical: -3),
                  //           title: Padding(
                  //             padding: const EdgeInsets.only(right: 20),
                  //             child: Row(
                  //               children: [
                  //                 Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                   decoration: BoxDecoration(
                  //                       border:
                  //                           Border.all(color: Colors.black12),
                  //                       borderRadius: BorderRadius.circular(3)),
                  //                 ),
                  //                 const SizedBox(
                  //                   width: 15,
                  //                 ),
                  //                 const Flexible(
                  //                   child: Text(
                  //                     "ของใช้ครัวเรือน",
                  //                     style: TextStyle(fontSize: 14),
                  //                     overflow: TextOverflow.ellipsis,
                  //                     maxLines: 1,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              )),
          BootstrapCol(
              sizes: 'col-12',
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffed3023),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 15, right: 15),
                            child: Text(
                              "ลบทั้งหมด",
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
