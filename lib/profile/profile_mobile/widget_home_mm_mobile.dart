import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget homemmmobile(context) {
  double padT;
  if (Device.width > 991) {
    padT = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    padT = 15;
  } else if (Device.width >= 576 && Device.width <= 767) {
    padT = 15;
  } else {
    padT = 15;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: padT),
          child: const Text(
            "บัญชีของฉัน",
            style: TextStyle(fontSize: 15, fontFamily: "Prompt-Medium"),
          ),
        )),
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.solidUser,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ข้อมูลของฉัน",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_bank");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.buildingColumns,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "บัญชีธนาคาร",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_address");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.locationDot,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ที่อยู่",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_reset");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.key,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "เปลี่ยน",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "รหัสผ่าน",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
    BootstrapCol(
        sizes: 'col-12',
        child: const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Text(
            "คำสั่งซื้อ",
            style: TextStyle(fontSize: 15, fontFamily: "Prompt-Medium"),
          ),
        )),
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_historysuc");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.boxOpen,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ได้รับ",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "สินค้าแล้ว",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_loaddelivery");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.truckMoving,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "กำลังจัดส่ง",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_adddelivery");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.box,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ที่ต้องจัดส่ง",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/profile_addbuy");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.receipt,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ที่ต้องชำระ",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Navigator.of(context).pushNamed("/wait_offer");
                  },
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              FontAwesomeIcons.solidRectangleXmark,
                              color: Color(0xffef4137),
                              size: 20,
                            ),
                          )),
                      const SizedBox(height: 5),
                      const SizedBox(
                        width: 75,
                        child: Text(
                          "ยกเลิกสินค้า",
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
  ]);
}
