import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/showproduct/widget_dataright.dart';
import 'package:bizfull/showproduct/widget_picture.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget showproduct(context) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: BootstrapContainer(fluid: false, children: [
          BootstrapRow(children: <BootstrapCol>[
            BootstrapCol(
                sizes: 'col-12',
                child: SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/");
                          },
                          child: const Text(
                            "หน้าแรก",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffed3023)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "สินค้าน่าชิป",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xffed3023)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "รองเท้า",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xffed3023)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "รองเท้าสไตล์มินิ",
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ))
          ])
        ]))
  ]);
}

Widget datashowproduct(context, setState) {
  double lP;
  double rP;
  double tP;
  String typ;
  double lmP;
  double rmP;
  if (Device.width > 1240) {
    lP = 0;
    tP = 0;
    rP = 0;
    lmP = 20;
    rmP = 20;
    typ = "pc";
  } else if (Device.width >= 992 && Device.width <= 1240) {
    lP = 0;
    tP = 0;
    rP = 0;
    lmP = 20;
    rmP = 20;
    typ = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    lP = 20;
    tP = 5;
    rP = 20;
    lmP = 0;
    rmP = 0;
    typ = "mobile";
  } else {
    lP = 10;
    tP = 0;
    rP = 10;
    lmP = 0;
    rmP = 0;
    typ = "mobile";
  }
  return BootstrapContainer(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(typ == "pc" ? 7 : 0)),
      fluid: true,
      padding: EdgeInsets.only(top: tP, left: lmP, right: rmP),
      children: <Widget>[
        BootstrapRow(
          children: <BootstrapCol>[
            BootstrapCol(
                sizes: 'col-md-12 col-12 col-lg-6 col-xl-5',
                child: BootstrapContainer(
                    //         decoration: const BoxDecoration(color: Colors.white),
                    fluid: true,
                    children: <Widget>[picture(), smallunderpicture()])),
            BootstrapCol(
                sizes: 'col-md-12 col-12 col-lg-6 col-xl-7',
                child: BootstrapContainer(fluid: true, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: lP, right: rP),
                    child: dataright1(context),
                  ),
                ])),
          ],
        ),
      ]);
}
