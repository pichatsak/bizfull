
import 'package:bizfull/profile/address/dialog/widget_dialog_eeit_address.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget data1pc (context){
  return Row(
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
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
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
                                            content: editdialogaddress(context),
                                          ),
                                        );
                                      },
                                      child: const Text("แก้ไข",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xffed3023))),
                                    ),
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
                            );
}