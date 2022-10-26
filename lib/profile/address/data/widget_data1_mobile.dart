
import 'package:bizfull/profile/address/dialog/widget_dialog_edit_address_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget data1mobile (context){
  return Card(
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
                                                ElevatedButton(
                                                  style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(Colors
                                                                  .orange),
                                                      shape: MaterialStateProperty.all<
                                                              RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ))),
                                                  onPressed: () {
                                                    showDialog<String>(
                                                      barrierDismissible: false,
                                                      context: context,
                                                      builder: (BuildContext
                                                              context) =>
                                                          AlertDialog(
                                                        insetPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    15.0,
                                                                vertical: 24.0),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10.0))),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .only(top: 0.0),
                                                        content:
                                                            dialogeditaddressmobile(
                                                                context),
                                                      ),
                                                    );
                                                  },
                                                  child: const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 0,
                                                        right: 0,
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
                            );
}