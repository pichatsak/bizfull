import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget num0dataship() {
  double w;
  double h;
  double f0;
  double lP;
  double f1;
  double hZ;
  double wZ;
  double pZ;
  double hzZ;
  double zbH;
  double mL;
  double mT;
  double mR;
  double mtF;
  if (Device.width > 991) {
    w = 180;
    h = 500;
    f0 = 18;
    lP = 15;
    f1 = 25;
    hZ = 45;
    wZ = 170;
    pZ = 10;
    hzZ = 6;
    zbH = 20;
    mL = 10;
    mT = 12;
    mR = 15;
    mtF = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    w = 155;
    h = 470;
    f0 = 16;
    lP = 15;
    f1 = 22;
    hZ = 40;
    wZ = 150;
    pZ = 10;
    hzZ = 7;
    zbH = 20;
    mL = 10;
    mT = 12;
    mR = 15;
    mtF = 0;
  } else {
    w = 125;
    h = 370;
    f0 = 13;
    lP = 10;
    f1 = 14;
    hZ = 30;
    wZ = 110;
    pZ = 7;
    hzZ = 7;
    zbH = 10;
    mL = 20;
    mT = 10;
    mR = 9;
    mtF = 15;
  }
  return SizedBox(
    height: h,
    width: w,
    child: Stack(
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: mR, top: mtF),
                child: SizedBox(
                  width: double.infinity,
                  child: Text("ขนส่งระหว่างประเทศ",
                      style: TextStyle(
                          fontSize: f0,
                          color: const Color.fromARGB(255, 122, 122, 122)),
                      textAlign: TextAlign.end),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: mR),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    "ทางเรือ (SEA)",
                    style: TextStyle(
                        fontSize: f0,
                        color: const Color.fromARGB(255, 122, 122, 122)),
                    textAlign: TextAlign.end,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: zbH),
          Container(
            margin: EdgeInsets.only(left: mL, top: mT),
            child: Column(
              children: [
                Container(
                  height: hZ,
                  width: wZ,
                  decoration: BoxDecoration(
                      color: const Color(0xff3f5467),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(pZ),
                          bottomLeft: Radius.circular(pZ))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: lP),
                        child: Text(
                          "สินค้าทั่วไป",
                          style: TextStyle(fontSize: f1, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hzZ),
                Container(
                  height: hZ,
                  width: wZ,
                  decoration: BoxDecoration(
                      color: const Color(0xff3f5467),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(pZ),
                          bottomLeft: Radius.circular(pZ))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: lP),
                        child: Text(
                          "สินค้า มอก.",
                          style: TextStyle(fontSize: f1, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hzZ),
                Container(
                  height: hZ,
                  width: wZ,
                  decoration: BoxDecoration(
                      color: const Color(0xff3f5467),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(pZ),
                          bottomLeft: Radius.circular(pZ))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: lP),
                        child: Text(
                          "สินค้า อย.",
                          style: TextStyle(fontSize: f1, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hzZ),
                Container(
                  height: hZ,
                  width: wZ,
                  decoration: BoxDecoration(
                      color: const Color(0xff3f5467),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(pZ),
                          bottomLeft: Radius.circular(pZ))),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: lP),
                        child: Text(
                          "สินค้าลิขสิทธิ์",
                          style: TextStyle(fontSize: f1, color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
        Container(
          margin: const EdgeInsets.only(bottom: 10, right: 15),
          child: Image.asset(
            "images/ship.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            width: 170,
          ),
        )
      ],
    ),
  );
}
