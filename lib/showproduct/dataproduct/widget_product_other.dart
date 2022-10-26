import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/product/widget_menu_other.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget productother(List<ProductViewModel> listPdOther) {
  double pall;
  double bP;

  double b;
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
  if (Device.width > 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    h = 245;
    b = 150;
    bar = "pc";
    T = 5;
    R = 5;
    L = 5;
    pM = 0;
    pall = 5;
    bP = 0;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    h = 245;
    b = 150;
    bar = "lg";
    T = 5;
    R = 5;
    L = 5;
    pM = 0;
    pall = 5;
    bP = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    hSp2 = 5;
    fSd = 13;
    hSp3 = 5;
    fSm = 15;
    b = 180;
    h = 263;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    bar = "lg";
    pM = 5;
    pall = 10;
    bP = 30;
  } else if (Device.width >= 576 && Device.width <= 767) {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    bar = "sm";
    b = 180;
    h = 261;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    pM = 2;
    pall = 10;
    bP = 30;
  } else {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    bar = "mobile";
    b = 180;
    h = 261;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    pM = 2;
    pall = 10;
    bP = 30;
  }
  return Column(children: [
    Padding(
      padding: EdgeInsets.only(left: pall, right: pall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "สินค้าที่คุณอาจจะชอบ",
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          // InkWell(
          //   splashColor: Colors.transparent,
          //   hoverColor: Colors.transparent,
          //   highlightColor: Colors.transparent,
          //   onTap: () {},
          //   child: Row(
          //     children: [
          //       const Text("ดูเพิ่มเติม",
          //           style: TextStyle(
          //               fontFamily: "Prompt-Medium",
          //               fontSize: 14,
          //               color: Color(0xffed3023))),
          //       const SizedBox(width: 5),
          //       Container(
          //           margin: const EdgeInsets.only(bottom: 1),
          //           child: const Icon(
          //             FontAwesomeIcons.chevronRight,
          //             color: Color(0xffed3023),
          //             size: 14,
          //           ))
          //     ],
          //   ),
          // ),
        ],
      ),
    ),
    const SizedBox(height: 10),
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pM, right: pM, bottom: bP),
          child: Wrap(
            children: [
              ...listPdOther
                  .map((item) => Column(
                        children: [
                          if (bar == "lg") ...[
                            BootstrapCol(
                              sizes: 'col-3',
                              child: Card(
                                  margin: const EdgeInsets.all(2.0),
                                  child: SizedBox(
                                      height: h,
                                      // width: a,
                                      child: menuOther(b, T, R, L, hSp2, fSd,
                                          hSp3, fSm, item))),
                            )
                          ] else if (bar == "pc") ...[
                            BootstrapCol(
                              sizes: 'col-2',
                              child: Card(
                                  margin: const EdgeInsets.all(2.0),
                                  child: SizedBox(
                                      height: h,
                                      // width: a,
                                      child: menuOther(b, T, R, L, hSp2, fSd,
                                          hSp3, fSm, item))),
                            )
                          ] else if (bar == "sm") ...[
                            BootstrapCol(
                              sizes: 'col-4',
                              child: Card(
                                  margin: const EdgeInsets.all(2.0),
                                  child: SizedBox(
                                      height: h,
                                      // width: a,
                                      child: menuOther(b, T, R, L, hSp2, fSd,
                                          hSp3, fSm, item))),
                            )
                          ] else if (bar == "mobile") ...[
                            BootstrapCol(
                              sizes: 'col-6',
                              child: Card(
                                  margin: const EdgeInsets.all(2.0),
                                  child: SizedBox(
                                      height: h,
                                      // width: a,
                                      child: menuOther(b, T, R, L, hSp2, fSd,
                                          hSp3, fSm, item))),
                            )
                          ],
                        ],
                      ))
                  .toList(),
            ],
          ),
        ))
  ]);
}
