import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:shimmer_animation/shimmer_animation.dart';

Widget desktopView(BuildContext context) {
  bootstrapGridParameters(gutterSize: 0);
  return Column(
    children: [
      BootstrapContainer(fluid: true, children: <Widget>[
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              invisibleForSizes: ' md  sm xs',
              sizes: 'col-12',
              child: Shimmer(
                duration: const Duration(seconds: 5),
                interval: const Duration(seconds: 2),
                color: Colors.white,
                colorOpacity: 0.5,
                enabled: true,
                direction: const ShimmerDirection.fromLTRB(),
                child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("images/b_nav.png"),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,
                    )),
                    child: BootstrapContainer(fluid: false, children: <Widget>[
                      BootstrapRow(
                        children: <BootstrapCol>[
                          BootstrapCol(
                            sizes: 'col-12',
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                              FontAwesomeIcons.circleQuestion,
                                              size: 20,
                                              color: Colors.white),
                                          const SizedBox(width: 5),
                                          const Text("ช่วยเหลือ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13)),
                                          const SizedBox(width: 35),
                                          SvgPicture.asset(
                                            "images/car.svg",
                                            color: Colors.white,
                                            width: 20,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            "ติดตามสถานะ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            FontAwesomeIcons.bagShopping,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text("สินค้าน่าชิป สินค้าน่าช้อป",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13)),
                                          SizedBox(width: 35),
                                          Icon(
                                            FontAwesomeIcons.solidBell,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "การแจ้งเตือน",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                          SizedBox(width: 35),
                                          Icon(
                                            FontAwesomeIcons.solidCircleUser,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "เข้าสู่ระบบ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                          Text(
                                            " / ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            "สมัครสมาชิก",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40, right: 20, top: 5),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 140,
                                        child: Image.asset("images/loconew.png",
                                            filterQuality: FilterQuality.high),
                                      ),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      Flexible(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 15),
                                          child: TextFormField(
                                            cursorColor: Colors.black,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                color: Colors.black),
                                            decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 40,
                                                        top: 15,
                                                        bottom: 15,
                                                        right: 20),
                                                hintText:
                                                    'ค้นหา สินค้าและบริการ รวมถึงข้อมูลต่างๆของบิซฟูล ที่นี่',
                                                hintStyle: const TextStyle(
                                                    color: Colors.black54),
                                                border: UnderlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                filled: true,
                                                fillColor: Colors.white,
                                                suffixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffa91f2e)),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.all(5.0),
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .magnifyingGlass,
                                                        color: Colors.white,
                                                        size: 12,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 30, bottom: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        onEnter: ((event) {
                                          print("enter hovers");
                                        }),
                                        onExit: ((event) {
                                          print("exit hovers");
                                        }),
                                        child: GestureDetector(
                                          child: Row(
                                            children: const [
                                              Text(
                                                "เกี่ยวกับเรา",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                " / ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                "ติดต่อเรา",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "บริการของเรา",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            " / ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "เงื่อนไขการใช้งาน",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "อัตราเเลกเปลี่ยน",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            " / ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "ค่าบริการ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "บทความ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            " / ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "วิดีโอแนะนำ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "คำถามที่พบบ่อย",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            " / ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "แจ้งปัญหาการใช้งาน",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ])),
              ))
        ])
      ]),
    ],
  );
}
