import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget barfootterlogin() {
  double fontL = 20;
  double hCont = 120;
  double wPic = 150;
  if (Device.width > 767 && Device.width <= 991) {
    fontL = 15;
    hCont = 80;
    wPic = 100;
  } else if (Device.width <= 767) {
    fontL = 13;
    hCont = 70;

    wPic = 90;
  }

  return BootstrapRow(
    children: <BootstrapCol>[
      BootstrapCol(
          sizes: ' col-12',
          child: BootstrapContainer(fluid: false, children: <Widget>[
            BootstrapRow(children: <BootstrapCol>[
              BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6',
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: SizedBox(
                      height: hCont,
                      child: Row(
                        children: [
                          Center(
                              child: Image.asset(
                            "images/biz.png",
                            width: wPic,
                          )),
                        ],
                      ),
                    ),
                  )),
              BootstrapCol(
                  sizes: 'col-12 col-sm-12 col-md-6',
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: SizedBox(
                      height: hCont,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 0, right: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: Device.width > 767
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    "images/copyright.png",
                                    width: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "BIZfull 2022",
                                  textAlign:
                                      Device.screenType == ScreenType.mobile
                                          ? TextAlign.center
                                          : TextAlign.center,
                                  style: TextStyle(
                                    fontSize: fontL,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ])
          ]))
    ],
  );
}
