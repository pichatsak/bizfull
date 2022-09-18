import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget picture() {
  String typeSc;
  double w;
  double h;
  if (Device.width > 991) {
    typeSc = "pc";
    w = 0;
    h = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    typeSc = "md";
    w = 450;
    h = 450;
  } else {
    typeSc = "mobile";
    w = 360;
    h = 360;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
        child: Center(
          child: Container(
            child: typeSc == "pc"
                ? Image.asset(
                    "images/a6.jpg",
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    "images/a6.jpg",
                    fit: BoxFit.contain,
                    width: w,
                    height: h,
                  ),
          ),
        ),
      ),
    )
  ]);
}

Widget smallunderpicture() {
  double n;
  if (Device.width > 991) {
    n = 100;
  } else if (Device.width >= 768 && Device.width <= 991) {
    n = 100;
  } else {
    n = 80;
  }
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
    child: Container(
      height: n,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ...List.generate(10, (index) {
              return SizedBox(
                width: n,
                child: Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(
                          left: 0, top: 5, right: 5, bottom: 5)
                      : const EdgeInsets.all(5),
                  child: Center(
                    child: SizedBox(
                      width: n,
                      height: n,
                      // decoration: BoxDecoration(
                      //     border: Border.all(
                      //         color: const Color(0xffed3023), width: 2)),
                      child: Image.asset(
                        "images/a2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    ),

    // child: BootstrapRow(children: <BootstrapCol>[
    //   BootstrapCol(
    //     sizes: 'col-3',
    //     child: Padding(
    //       padding: const EdgeInsets.all(5.0),
    //       child: Center(
    //         child: Container(
    //           width: 82,
    //           height: 82,
    //           decoration: BoxDecoration(
    //               border: Border.all(color: const Color(0xffed3023), width: 2)),
    //           child: Image.asset(
    //             "images/a2.jpg",
    //             fit: BoxFit.contain,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    //   BootstrapCol(
    //     sizes: 'col-3',
    //     child: Padding(
    //       padding: const EdgeInsets.all(5.0),
    //       child: Image.asset(
    //         "images/a3.jpg",
    //         fit: BoxFit.contain,
    //       ),
    //     ),
    //   ),
    //   BootstrapCol(
    //     sizes: 'col-3',
    //     child: Padding(
    //       padding: const EdgeInsets.all(5.0),
    //       child: Image.asset(
    //         "images/a4.jpg",
    //         fit: BoxFit.contain,
    //       ),
    //     ),
    //   ),
    //   BootstrapCol(
    //     sizes: 'col-3',
    //     child: Padding(
    //       padding: const EdgeInsets.all(5.0),
    //       child: Image.asset(
    //         "images/a5.jpg",
    //         fit: BoxFit.contain,
    //       ),
    //     ),
    //   ),
    // ]),
  );
}
