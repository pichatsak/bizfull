import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget num1data() {
  double fZ;
  double fZ1;
  double fZ2;
  double fZ3;
  double fZ4;
  double hZ;
  double hZB;
  double hB;
  double cC;
  EdgeInsets pB;
  double hN;
  double lrL;
  double hL;
  if (Device.width > 991) {
    fZ = 16;
    fZ1 = 75;
    fZ2 = 22;
    fZ3 = 22;
    fZ4 = 16;
    hZ = 5;
    hZB = 500;
    hB = 65;
    cC = 20;
    hN = 430;
    lrL = 15;
    hL = 2;
    pB = const EdgeInsets.only(left: 10, right: 10, top: 9, bottom: 9);
  } else if (Device.width >= 768 && Device.width <= 991) {
    fZ = 15;
    fZ1 = 60;
    fZ2 = 17;
    fZ3 = 20;
    fZ4 = 16;
    hZ = 5;
    hZB = 470;
    hB = 65;
    cC = 15;
    hN = 400;
    lrL = 15;
    hL = 2;
    pB = const EdgeInsets.only(left: 10, right: 10, top: 9, bottom: 9);
  } else {
    fZ = 13;
    fZ1 = 45;
    fZ2 = 13;
    fZ3 = 14;
    fZ4 = 14;
    hZ = 5;
    hZB = 370;
    hB = 65;
    cC = 10;
    hN = 300;
    lrL = 10;
    hL = 2;
    pB = const EdgeInsets.only(left: 3, right: 3, top: 5, bottom: 5);
  }
  return Container(
    height: hZB,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(cC), topLeft: Radius.circular(cC))),
    child: Column(children: [
      Container(
        height: hB,
        decoration: BoxDecoration(
            color: const Color(0xff10baba),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(cC))),
        child: Center(
            child: Text(
          "1-2 คิว (ลูกบาศก์เมตร) ต่อเดือน",
          style: TextStyle(color: Colors.white, fontSize: fZ),
          textAlign: TextAlign.center,
        )),
      ),
      Container(
        height: hZ,
        color: const Color(0xff2592a1),
      ),
      SizedBox(
        height: hN,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "1-2",
                  style: TextStyle(
                      color: const Color(0xff10baba),
                      fontSize: fZ1,
                      fontFamily: "Prompt-Bold",
                      height: 1),
                ),
                Column(
                  children: [
                    Text(
                      "CBM",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ2,
                          fontFamily: "Prompt-Medium"),
                    ),
                    Text(
                      "/mo",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ2,
                          fontFamily: "Prompt-Medium"),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      "6800",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ3,
                          fontFamily: "Prompt-Medium"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: lrL, right: lrL),
                      child: Container(
                        height: hL,
                        color: const Color(0xff10baba),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "7000",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ3,
                          fontFamily: "Prompt-Medium"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: lrL, right: lrL),
                      child: Container(
                        height: hL,
                        color: const Color(0xff10baba),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "7500",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ3,
                          fontFamily: "Prompt-Medium"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: lrL, right: lrL),
                      child: Container(
                        height: hL,
                        color: const Color(0xff10baba),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "8500",
                      style: TextStyle(
                          color: const Color(0xff10baba),
                          fontSize: fZ3,
                          fontFamily: "Prompt-Medium"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: lrL, right: lrL),
                      child: Container(
                        height: hL,
                        color: const Color(0xff10baba),
                      ),
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff10baba),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ))),
                onPressed: () {},
                child: Padding(
                  padding: pB,
                  child: Text(
                    "ติดต่อรับสิทธิ์",
                    style: TextStyle(color: Colors.white, fontSize: fZ4),
                  ),
                )),
          ],
        ),
      ),
    ]),
  );
}
