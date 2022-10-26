import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/cate_model_cb.dart';
import 'package:bizfull/models/group_sub_cb.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> interactiveStates2 = <MaterialState>{
    MaterialState.selected,
  };
  if (states.any(interactiveStates.contains)) {
    return const Color(0xffed3023);
  }
  if (states.any(interactiveStates2.contains)) {
    return const Color(0xffed3023);
  } else {
    return Colors.black12;
  }
}

Widget dataleft(
  List<CategoryModelCb> listCate,
  List multipleSelected,
  void Function(VoidCallback fn) setState,
  bool isCheckShip,
  bool isCheckShop,
  void Function(bool val) updateCbShip,
  void Function(bool val) updateCbShop,
  List<GroupSubCbModel> listGroupShop,
  List multipleSelectedGroupSub,
  List<GroupSubCbModel> listGroupShip,
  List multipleSelectedGroupSubShip,
  void Function() updateChooseCate,
) {
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
                      Checkbox(
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isCheckShip,
                        onChanged: (bool? value) {
                          updateCbShip(value!);
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "สินค้าน่าชิป",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  ...listGroupShip.map(
                    (el) => Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: listGroupShip[listGroupShip.indexOf(el)]
                                .isCheck,
                            onChanged: (bool? value) {
                              int index = listGroupShip.indexOf(el);
                              listGroupShip[index].isCheck = value!;
                              if (multipleSelectedGroupSubShip
                                  .contains(listGroupShip[index])) {
                                multipleSelectedGroupSubShip
                                    .remove(listGroupShip[index]);
                              } else {
                                multipleSelectedGroupSubShip
                                    .add(listGroupShip[index]);
                              }
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text(
                              // "รองเท้า",
                              el.groupTitle,
                              style: const TextStyle(fontSize: 13),
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isCheckShop,
                        onChanged: (bool? value) {
                          updateCbShop(value!);
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "สินค้าน่าช้อป",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: Row(
                  //     children: [
                  //       Stack(
                  //         children: [
                  //           Container(
                  //             height: 15,
                  //             width: 15,
                  //             decoration: BoxDecoration(
                  //                 border: Border.all(
                  //                     color: const Color(0xffed3023)),
                  //                 borderRadius: BorderRadius.circular(3),
                  //                 color: const Color(0xffed3023)),
                  //           ),
                  //           SizedBox(
                  //               height: 15,
                  //               width: 15,
                  //               child: Align(
                  //                 alignment: Alignment.center,
                  //                 child: Container(
                  //                   margin: const EdgeInsets.only(left: 0.5),
                  //                   child: const Icon(
                  //                     FontAwesomeIcons.check,
                  //                     color: Colors.white,
                  //                     size: 11,
                  //                   ),
                  //                 ),
                  //               ))
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Text(
                  //         "ประเทศไทย",
                  //         style: TextStyle(fontSize: 13),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  ...listGroupShop.map(
                    (el) => Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3)),
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: listGroupShop[listGroupShop.indexOf(el)]
                                .isCheck,
                            onChanged: (bool? value) {
                              int index = listGroupShop.indexOf(el);
                              listGroupShop[index].isCheck = value!;
                              if (multipleSelectedGroupSub
                                  .contains(listGroupShop[index])) {
                                multipleSelectedGroupSub
                                    .remove(listGroupShop[index]);
                              } else {
                                multipleSelectedGroupSub
                                    .add(listGroupShop[index]);
                              }
                              setState(() {});
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Text(
                              // "รองเท้า",
                              el.groupTitle,
                              style: const TextStyle(fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 15,
                  //         width: 15,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Text(
                  //         "อเมริกา",
                  //         style: TextStyle(fontSize: 13),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 15,
                  //         width: 15,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Text(
                  //         "เกาหลี",
                  //         style: TextStyle(fontSize: 13),
                  //       ),
                  //     ],
                  //   ),
                  // ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  ...listCate
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: listCate[listCate.indexOf(e)].isCheck,
                                onChanged: (bool? value) {
                                  int index = listCate.indexOf(e);
                                  listCate[index].isCheck = value!;
                                  if (multipleSelected
                                      .contains(listCate[index])) {
                                    multipleSelected.remove(listCate[index]);
                                  } else {
                                    multipleSelected.add(listCate[index]);
                                  }
                                  setState(() {});
                                  updateChooseCate();
                                },
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                child: Text(
                                  // "รองเท้า",
                                  e.categoryName,
                                  style: const TextStyle(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),

                  // const SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 20,
                  //         width: 20,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Flexible(
                  //         child: Text(
                  //           "กระเป๋า",
                  //           style: TextStyle(fontSize: 14),
                  //           overflow: TextOverflow.ellipsis,
                  //           maxLines: 1,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 20,
                  //         width: 20,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Flexible(
                  //         child: Text(
                  //           "เสื้อผ้า",
                  //           style: TextStyle(fontSize: 14),
                  //           overflow: TextOverflow.ellipsis,
                  //           maxLines: 1,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 20,
                  //         width: 20,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Flexible(
                  //         child: Text(
                  //           "เครื่องมือสื่อสาร",
                  //           style: TextStyle(fontSize: 14),
                  //           overflow: TextOverflow.ellipsis,
                  //           maxLines: 1,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20),
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         height: 20,
                  //         width: 20,
                  //         decoration: BoxDecoration(
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.circular(3)),
                  //       ),
                  //       const SizedBox(
                  //         width: 15,
                  //       ),
                  //       const Flexible(
                  //         child: Text(
                  //           "อุปกรณ์ไฟฟ้า",
                  //           style: TextStyle(fontSize: 14),
                  //           overflow: TextOverflow.ellipsis,
                  //           maxLines: 1,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const SizedBox(height: 15),
                  // Row(
                  //   children: [
                  //     Container(
                  //         margin: const EdgeInsets.only(bottom: 3),
                  //         child: const Icon(FontAwesomeIcons.chevronDown,
                  //             size: 18, color: Colors.black87)),
                  //     const SizedBox(
                  //       width: 15,
                  //     ),
                  //     const Text(
                  //       "ดูเพิ่มเติม",
                  //       style: TextStyle(
                  //           fontSize: 14, fontFamily: "Prompt-Medium"),
                  //     ),
                  //   ],
                  // ),

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
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffed3023)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ))),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 0, right: 0),
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
