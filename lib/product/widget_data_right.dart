import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:bizfull/product/widget_dropdown.dart';

import 'package:bizfull/product/widget_menu.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dararight(setState, key) {
  double b;
  double a;

  double h;
  double T;
  double R;
  double L;
  String bar;
  double hSp2;
  double fSd;
  double hSp3;
  double fSm;
  double pM;
  double pB;
  if (Device.width > 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    a = 198.4;
    h = 292;
    b = 188;
    bar = "pc";
    T = 5;
    R = 5;
    L = 5;
    pM = 0;
    pB = 0;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    a = 192;
    h = 292;
    b = 188;
    bar = "pc";
    T = 5;
    R = 5;
    L = 5;
    pM = 0;
    pB = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    hSp2 = 5;
    fSd = 13;
    hSp3 = 5;
    fSm = 15;
    a = 170;
    b = 180;
    h = 263;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    bar = "tablet";
    pM = 5;
    pB = 10;
  } else if (Device.width >= 576 && Device.width <= 767) {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    bar = "sm";
    a = 170;
    b = 180;
    h = 261;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    pM = 2;
    pB = 4;
  } else {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    bar = "mobile";
    a = 175;
    b = 180;
    h = 261;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    pM = 2;
    pB = 4;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: bar == "pc"
            ? Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Text("เรียงโดย"),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 15, right: 15),
                              child: Text(
                                "ยอดนิยม",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 15, right: 15),
                                child: Text(
                                  "ล่าสุด",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 15, right: 15),
                                child: Text(
                                  "สินค้าขายดี",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // const Text(
                                  //   "ราคา                        ",
                                  // ),
                                  // Container(
                                  //     margin:
                                  //         const EdgeInsets.only(bottom: 1),
                                  //     child: const Icon(
                                  //         FontAwesomeIcons.chevronDown,
                                  //         size: 14,
                                  //         color: Colors.black87)),
                                  SizedBox(
                                    width: 90,
                                    height: 31.5,
                                    child: dropdownsell(setState),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                        Row(
                          children: [
                            const Text(
                              "1",
                              style: TextStyle(color: Color(0xffed3023)),
                            ),
                            const Text(
                              "/",
                            ),
                            const Text(
                              "10",
                            ),
                            const SizedBox(width: 30),
                            Card(
                              elevation: 0.9,
                              margin: const EdgeInsets.all(0),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xfff9f9f9),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11, right: 11),
                                  child: Container(
                                      margin: const EdgeInsets.only(bottom: 1),
                                      child: const Icon(
                                          FontAwesomeIcons.chevronLeft,
                                          size: 14,
                                          color: Colors.black26)),
                                ),
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.all(0),
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3)),
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 11, right: 11),
                                  child: Container(
                                      margin: const EdgeInsets.only(bottom: 1),
                                      child: const Icon(
                                          FontAwesomeIcons.chevronRight,
                                          size: 14,
                                          color: Colors.black87)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, left: 0, right: 0, top: 10), //5
                child: Container(
                  //   height: 60,

                  decoration: BoxDecoration(
                      //    color: const Color(0xfff3f3f3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(left: pB, right: pB),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 10, right: 10),
                              child: Text(
                                "ยอดนิยม",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Card(
                            margin: const EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10, right: 10),
                                child: Text(
                                  "ล่าสุด",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Card(
                            margin: const EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10, right: 10),
                                child: Text(
                                  "สินค้าขายดี",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Card(
                            margin: const EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // const Text(
                                  //   "ราคา ",
                                  //   style: TextStyle(fontSize: 13),
                                  // ),
                                  // Container(
                                  //     margin:
                                  //         const EdgeInsets.only(bottom: 1),
                                  //     child: const Icon(
                                  //         FontAwesomeIcons.chevronDown,
                                  //         size: 14,
                                  //         color: Colors.black87)),
                                  SizedBox(
                                    width: 70,
                                    height: 30,
                                    child: dropdownsell(setState),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {
                            key.currentState.openEndDrawer();
                          },
                          child: Container(
                              margin: const EdgeInsets.only(top: 0),
                              child: const Icon(
                                  FontAwesomeIcons.ellipsisVertical,
                                  size: 20,
                                  color: Color(0xffa91f2e))),
                        )
                      ],
                    ),
                  ),
                ),
              )),
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pM, right: pM),
          child: Wrap(
            children: [
              // Card(
              //     child: SizedBox(
              //         height: h,
              //         width: a,
              //         child: menu(b, T, R, L, hSp2, fSd, hSp3, fSm))),

              ...List.generate(10, (index) {
                return Column(
                  children: [
                    if (bar == "pc") ...[
                      Card(
                          child: SizedBox(
                              height: h,
                              width: a,
                              child: menu(b, T, R, L, hSp2, fSd, hSp3, fSm))),
                    ] else if (bar == "tablet") ...[
                      BootstrapCol(
                        sizes: 'col-3',
                        child: Card(
                            margin: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                height: h,
                                // width: a,
                                child: menu(b, T, R, L, hSp2, fSd, hSp3, fSm))),
                      )
                    ] else if (bar == "sm") ...[
                      BootstrapCol(
                        sizes: 'col-4',
                        child: Card(
                            margin: const EdgeInsets.all(2.0),
                            child: SizedBox(
                                height: h,
                                // width: a,
                                child: menu(b, T, R, L, hSp2, fSd, hSp3, fSm))),
                      )
                    ] else if (bar == "mobile") ...[
                      BootstrapCol(
                        sizes: 'col-6',
                        child: Card(
                            margin: const EdgeInsets.all(2.0),
                            child: SizedBox(
                                height: h,
                                // width: a,
                                child: menu(b, T, R, L, hSp2, fSd, hSp3, fSm))),
                      )
                    ],
                  ],
                );
              })
            ],
          ),
        ))
  ]);
}
