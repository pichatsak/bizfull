import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget footter() {
  double headTt = 18;
  double pdt = 35;
  double sp = 35;
  if (Device.width < 767) {
    headTt = 14;
    sp = 10;
    pdt = 20;
  } else {
    headTt = 18;
    sp = 35;
    pdt = 0;
  }
  return Padding(
    padding: EdgeInsets.only(left: 5, right: 5, top: pdt),
    child: BootstrapRow(
      children: <BootstrapCol>[
        BootstrapCol(
            sizes: 'col-md-4 col-12 col-sm-12 col-md-6',
            child: Padding(
              padding: EdgeInsets.all(sp),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "วิธีการชำระเงิน",
                      style: TextStyle(fontSize: headTt),
                      textAlign: Device.screenType == ScreenType.mobile
                          ? TextAlign.center
                          : TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: sp,
                  ),
                  BootstrapRow(
                    children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-6 col-sm-6 col-md-6 col-lg-6',
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Image.asset(
                              "images/footer/prompt-pay.png",
                            ),
                          )),
                      BootstrapCol(
                          sizes: 'col-6 col-sm-6 col-md-6 col-lg-6',
                          child: Column(
                            children: [
                              // BootstrapCol(
                              //   invisibleForSizes: 'xs sm lg xl',
                              //   child: const SizedBox(height: 20),
                              // ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Image.asset(
                                  "images/footer/truewallet.jpg",
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            )),
        BootstrapCol(
            sizes: 'col-md-4 col-12 col-sm-12 col-md-6',
            child: Padding(
              padding: EdgeInsets.all(sp),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "บริการจัดส่ง",
                      style: TextStyle(fontSize: headTt),
                      textAlign: Device.screenType == ScreenType.mobile
                          ? TextAlign.center
                          : TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: sp,
                  ),
                  BootstrapRow(children: <BootstrapCol>[
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/kerryex_ban.png",
                              ),
                            ),
                          ],
                        )),
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/Flash-Express.png",
                              ),
                            ),
                          ],
                        )),
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/DHL-Emblem.png",
                              ),
                            ),
                          ],
                        )),
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/ppp.jpg",
                              ),
                            ),
                          ],
                        )),
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/bestexpress.png",
                              ),
                            ),
                          ],
                        )),
                    BootstrapCol(
                        sizes: 'col-4 col-sm-4 col-md-6 col-lg-4',
                        child: Column(
                          children: [
                            // BootstrapCol(
                            //   invisibleForSizes: 'xs sm lg xl',
                            //   child: const SizedBox(height: 20),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Image.asset(
                                "images/footer/po.png",
                              ),
                            ),
                          ],
                        )),
                  ]),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Follow US",
                      style: TextStyle(fontSize: headTt),
                      textAlign: Device.screenType == ScreenType.mobile
                          ? TextAlign.center
                          : TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: Device.screenType == ScreenType.mobile
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "images/footer/facebook.png",
                          width: 40,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                          child: Image.asset(
                        "images/footer/line.png",
                        width: 40,
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                          child: Image.asset(
                        "images/footer/instagram.png",
                        width: 40,
                      )),
                    ],
                  ),
                ],
              ),
            )),
        BootstrapCol(
            sizes: 'col-md-4 col-12 col-sm-12 col-md-12',
            child: Padding(
              padding: EdgeInsets.all(sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "ดาวโหลดแอปพลิเคชั่น",
                      style: TextStyle(fontSize: headTt),
                      textAlign: Device.screenType == ScreenType.mobile
                          ? TextAlign.center
                          : TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BootstrapRow(
                    children: <BootstrapCol>[
                      BootstrapCol(
                        sizes: 'col-6 col-sm-6 col-md-12 col-lg-6',
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Image.asset(
                                "images/qr-code.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-6 col-sm-6 col-md-12 col-lg-6',
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 0),
                          child: Column(
                            children: [
                              BootstrapCol(
                                invisibleForSizes: 'xs sm lg xl',
                                child: const SizedBox(height: 20),
                              ),
                              Center(
                                  child: Image.asset(
                                "images/apple.png",
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Center(
                                    child: Image.asset(
                                  "images/android.png",
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    ),
  );
}
