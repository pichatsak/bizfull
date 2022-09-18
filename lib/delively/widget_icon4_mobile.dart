import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget icon4() {
  double fO1;
  double zC;
  double zC1;
  double pC;
  double mT;
  double mL;
  double zC2;
  double wL1;
  double wR1;
  double wL3;
  double wR3;
  if (Device.width > 991) {
    fO1 = 14;
    zC = 30;
    zC1 = 27;
    pC = 25;
    mT = 70;
    mL = 60;
    zC2 = 15;
    wL1 = 24;
    wR1 = 25;
    wL3 = 20;
    wR3 = 25;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fO1 = 14;
    zC = 30;
    zC1 = 27;
    pC = 25;
    mT = 70;
    mL = 60;
    zC2 = 15;
    wL1 = 24;
    wR1 = 25;
    wL3 = 20;
    wR3 = 25;
  } else {
    fO1 = 13;
    zC = 25;
    zC1 = 22;
    pC = 20;
    mT = 60;
    mL = 50;
    zC2 = 10;
    wL1 = 7;
    wR1 = 7;
    wL3 = 7;
    wR3 = 7;
    // 899449
  }
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(57, 248, 231, 229),
                            width: 4),
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(108, 248, 189, 185)),
                    child: Padding(
                      padding: EdgeInsets.all(pC),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 2, left: 2),
                        child: Icon(
                          FontAwesomeIcons.solidClock,
                          color: const Color(0xffef4137),
                          size: zC,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: mT, left: mL),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffef4137)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          FontAwesomeIcons.check,
                          color: Colors.white,
                          size: zC2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text("กำลังดำเนินการ",
                      style: TextStyle(
                        fontSize: fO1,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(width: wL1),
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            child: const Icon(FontAwesomeIcons.anglesRight,
                size: 15, color: Color(0xffef4137)),
          ),
          SizedBox(width: wR1),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(57, 248, 231, 229),
                            width: 4),
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(108, 248, 189, 185)),
                    child: Padding(
                      padding: EdgeInsets.all(pC),
                      child: Container(
                        margin: const EdgeInsets.only(right: 5, bottom: 6),
                        child: Icon(
                          FontAwesomeIcons.warehouse,
                          color: const Color(0xffef4137),
                          size: zC1,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: mT, left: mL),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffef4137)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          FontAwesomeIcons.check,
                          color: Colors.white,
                          size: zC2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text("แพ็คสินค้าแล้ว",
                      style: TextStyle(
                        fontSize: fO1,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 15),
      Container(
        margin: const EdgeInsets.only(left: 130),
        child: const Icon(FontAwesomeIcons.anglesDown,
            size: 15, color: Color(0xffef4137)),
      ),
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 6),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(57, 248, 231, 229),
                        width: 4),
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(108, 248, 189, 185)),
                child: Padding(
                  padding: EdgeInsets.all(pC),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 2, left: 2),
                    child: Icon(
                      FontAwesomeIcons.box,
                      color: const Color.fromARGB(47, 239, 64, 55),
                      size: zC,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text("สินค้าส่งแล้ว",
                      style: TextStyle(
                        fontSize: fO1,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(width: wL3),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: const Icon(FontAwesomeIcons.anglesLeft,
                size: 15, color: Colors.black),
          ),
          SizedBox(width: wR3),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffef4137), width: 4),
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(108, 248, 189, 185)),
                    child: Padding(
                      padding: EdgeInsets.all(pC),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 2, right: 2),
                        child: Icon(
                          FontAwesomeIcons.truck,
                          color: const Color(0xffef4137),
                          size: zC,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: mT, left: mL),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffef4137)),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          FontAwesomeIcons.check,
                          color: Colors.white,
                          size: zC2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 100,
                child: Center(
                  child: Text("อยู่กับบริษัทขนส่ง",
                      style: TextStyle(
                        fontSize: fO1,
                      )),
                ),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
