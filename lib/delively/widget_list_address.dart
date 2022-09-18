import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/delively/widget_icon4_mobile.dart';
import 'package:bizfull/delively/widget_timeline.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget listaddress() {
  double pad;
  double pad1;
  double pad2;
  double fO;
  double fO1;
  double zC;
  double zC1;
  double pC;
  double mT;
  double mL;
  double zC2;
  double wL1;
  double wR1;
  double wL2;
  double wR2;
  double wL3;
  double wR3;
  String ok;
  double t4;
  double lE;
  if (Device.width > 991) {
    pad = 20;
    pad1 = 20;
    pad2 = 20;
    fO = 14;
    fO1 = 14;
    zC = 30;
    zC1 = 27;
    pC = 25;
    mT = 70;
    mL = 60;
    zC2 = 15;
    wL1 = 20;
    wR1 = 20;
    wL2 = 20;
    wR2 = 20;
    wL3 = 20;
    wR3 = 20;
    t4 = 50;
    lE = 80;
    ok = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    pad = 20;
    pad1 = 20;
    pad2 = 20;
    fO = 14;
    fO1 = 14;
    zC = 30;
    zC1 = 27;
    pC = 25;
    mT = 70;
    mL = 60;
    zC2 = 15;
    wL1 = 20;
    wR1 = 20;
    wL2 = 20;
    wR2 = 20;
    wL3 = 20;
    wR3 = 20;
    t4 = 50;
    lE = 60;
    ok = "pc";
  } else {
    pad = 10;
    pad1 = 10;
    pad2 = 10;
    fO = 13;
    fO1 = 10;
    zC = 15;
    zC1 = 12;
    pC = 5;
    mT = 25;
    mL = 25;
    zC2 = 7;
    wL1 = 0;
    wR1 = 0;
    wL2 = 0;
    wR2 = 0;
    wL3 = 0;
    wR3 = 0;
    t4 = 30;
    lE = 30;

    ok = "mobile";
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.all(pad),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xfff3f3f3),
                borderRadius: BorderRadius.circular(7)),
            child: Padding(
              padding: EdgeInsets.all(pad1),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("ข้อมูลผู้จัดส่ง",
                                  style: TextStyle(
                                      fontSize: fO,
                                      fontFamily: "Prompt-Medium")),
                            ],
                          ),
                          Row(children: [
                            Text("จัดส่งโดย : ",
                                style: TextStyle(fontSize: fO)),
                            Text("Kerry",
                                style: TextStyle(
                                    fontSize: fO,
                                    color: const Color.fromARGB(165, 0, 0, 0)))
                          ]),
                          Row(children: [
                            Text("พนักงานจัดส่ง : ",
                                style: TextStyle(fontSize: fO)),
                            Text("SAMLIT NAHAI",
                                style: TextStyle(
                                    fontSize: fO,
                                    color: const Color.fromARGB(165, 0, 0, 0)))
                          ]),
                        ],
                      ),
                      Row(children: [
                        Text("หมายเลขสั่งซื้อ : ",
                            style: TextStyle(
                                fontSize: fO, fontFamily: "Prompt-Medium")),
                        Text("000001",
                            style: TextStyle(
                                fontSize: fO, fontFamily: "Prompt-Medium"))
                      ]),
                    ],
                  ),
                  BootstrapCol(
                    sizes: 'col-12',
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: pad2, right: pad2, bottom: pad2, top: t4),
                          child: Column(
                            children: [
                              ok == "pc"
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 6),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color
                                                                  .fromARGB(57,
                                                              248, 231, 229),
                                                          width: 4),
                                                      shape: BoxShape.circle,
                                                      color:
                                                          const Color.fromARGB(
                                                              108,
                                                              248,
                                                              189,
                                                              185)),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(pC),
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 2,
                                                              left: 2),
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .solidClock,
                                                        color: const Color(
                                                            0xffef4137),
                                                        size: zC,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: mT, left: mL),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffef4137)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
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
                                          margin:
                                              const EdgeInsets.only(bottom: 25),
                                          child: const Icon(
                                              FontAwesomeIcons.anglesRight,
                                              size: 15,
                                              color: Color(0xffef4137)),
                                        ),
                                        SizedBox(width: wR1),
                                        Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 6),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color
                                                                  .fromARGB(57,
                                                              248, 231, 229),
                                                          width: 4),
                                                      shape: BoxShape.circle,
                                                      color:
                                                          const Color.fromARGB(
                                                              108,
                                                              248,
                                                              189,
                                                              185)),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(pC),
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              right: 5,
                                                              bottom: 6),
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .warehouse,
                                                        color: const Color(
                                                            0xffef4137),
                                                        size: zC1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: mT, left: mL),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffef4137)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
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
                                        SizedBox(width: wL2),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 25),
                                          child: const Icon(
                                              FontAwesomeIcons.anglesRight,
                                              size: 15,
                                              color: Color(0xffef4137)),
                                        ),
                                        SizedBox(width: wR2),
                                        Column(
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 6),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xffef4137),
                                                          width: 4),
                                                      shape: BoxShape.circle,
                                                      color:
                                                          const Color.fromARGB(
                                                              108,
                                                              248,
                                                              189,
                                                              185)),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(pC),
                                                    child: Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 2,
                                                              right: 2),
                                                      child: Icon(
                                                        FontAwesomeIcons.truck,
                                                        color: const Color(
                                                            0xffef4137),
                                                        size: zC,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      top: mT, left: mL),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            color: Color(
                                                                0xffef4137)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
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
                                              width: 105,
                                              child: Center(
                                                child:
                                                    Text("อยู่กับบริษัทขนส่ง",
                                                        style: TextStyle(
                                                          fontSize: fO1,
                                                        )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: wL3),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 24),
                                          child: const Icon(
                                              FontAwesomeIcons.anglesRight,
                                              size: 15,
                                              color: Colors.black),
                                        ),
                                        SizedBox(width: wR3),
                                        Column(
                                          children: [
                                            Container(
                                              margin:
                                                  const EdgeInsets.only(top: 6),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              57,
                                                              248,
                                                              231,
                                                              229),
                                                      width: 4),
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                      108, 248, 189, 185)),
                                              child: Padding(
                                                padding: EdgeInsets.all(pC),
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 2, left: 2),
                                                  child: Icon(
                                                    FontAwesomeIcons.box,
                                                    color: const Color.fromARGB(
                                                        47, 239, 64, 55),
                                                    size: zC,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            SizedBox(
                                              width: 105,
                                              child: Center(
                                                child: Text("สินค้าส่งแล้ว",
                                                    style: TextStyle(
                                                      fontSize: fO1,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  : icon4(),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: lE, right: lE, top: 35, bottom: 35),
                                child:
                                    Container(height: 1, color: Colors.black12),
                              ),
                              timeline()
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ))
  ]);
}
