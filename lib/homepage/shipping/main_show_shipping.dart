import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:bizfull/homepage/shipping/widget_show_product_shipping.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget showproductshipping(BuildContext context) {
  return showdesktopshippingNew(context);
}

Widget showdesktopshippingNew(context) {
  double a;
  double b;
  double h;

  double T;
  double R;
  double L;

  double c;
  double d;
  double f;

  EdgeInsets rdShow =
      const EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0);
  double brBox;
  double wFlag;
  double hSp;
  double fPd;
  double cT;
  double fd;
  double wSP;
  double sIcon;
  double mL1;
  double mL2;
  double mL3;
  double hSP;
  double allP;
  double hSP1;
  double hSp2;
  double fSd;
  double hSp3;
  double fSm;
  double hM;
  double hM1;
  double fM;
  if (Device.width > 991) {
    rdShow = const EdgeInsets.only(left: 15, bottom: 15, right: 15, top: 10);
    brBox = 20;
    wFlag = 64;
    hSp = 20;
    fPd = 16;
    cT = 40;
    fd = 13;
    wSP = 1;
    sIcon = 15;
    mL1 = 8;
    mL2 = 16;
    mL3 = 24;
    hSP = 10;
    allP = 5;
    hSP1 = 15;
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    a = 198.4;
    b = 188;
    d = 110;
    T = 5;
    R = 5;
    L = 5;
    h = 292;
    c = 199.8;
    d = 99;
    f = 182;
    hM = 20;
    hM1 = 10;
    fM = 16;
  } else if (Device.width >= 768 && Device.width <= 991) {
    rdShow = const EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 0);
    brBox = 20;
    wFlag = 64;
    hSp = 10;
    fPd = 16;
    cT = 30;
    fd = 13;
    wSP = 1;
    sIcon = 15;
    mL1 = 8;
    mL2 = 16;
    mL3 = 24;
    hSP = 0;
    allP = 5;
    hSP1 = 15;
    hSp2 = 0;
    fSd = 12;
    hSp3 = 5;
    fSm = 15;
    a = 130;
    b = 125;
    h = 209;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    c = 131.8;
    d = 65;
    f = 121;
    hM = 10;
    hM1 = 5;
    fM = 12;
  } else {
    rdShow = const EdgeInsets.only(left: 10, bottom: 10, right: 10, top: 0);
    brBox = 20;
    wFlag = 45;
    hSp = 10;
    fPd = 12;
    cT = 20;
    fd = 10;
    wSP = 1;
    sIcon = 11;
    mL1 = 5;
    mL2 = 10;
    mL3 = 15;
    hSP = 10;
    allP = 3.5;
    hSP1 = 15;
    hSp2 = 0;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    a = 100;
    b = 95;
    h = 172;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    c = 101.8;
    d = 50;
    f = 106;
    hM = 10;
    hM1 = 5;
    fM = 12;
  }

  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
    child: BootstrapRow(
      children: <BootstrapCol>[
        BootstrapCol(
            sizes: 'col-12',
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(brBox),
                  color: const Color(0xfff3f3f4)),
              child: Padding(
                padding: rdShow,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset(
                            "images/china.png",
                            width: wFlag,
                          ),
                          SizedBox(
                            width: hSp,
                          ),
                          Text(
                            "นำเข้า สะดวกง่าย โอนปลอดภัย ส่งถึงที่",
                            style:
                                TextStyle(fontSize: fPd, color: Colors.black),
                          )
                        ]),
                        Container(
                          margin: EdgeInsets.only(top: cT),
                          child: Row(
                            children: [
                              Text(
                                "ดูเพิ่ม",
                                style: TextStyle(
                                    fontSize: fd, color: Colors.black),
                              ),
                              SizedBox(width: wSP),
                              Stack(children: [
                                Icon(Icons.arrow_forward_ios, size: sIcon),
                                Container(
                                  margin: EdgeInsets.only(left: mL1),
                                  child: Icon(Icons.arrow_forward_ios,
                                      size: sIcon),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: mL2),
                                  child: Icon(Icons.arrow_forward_ios,
                                      size: sIcon),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: mL3),
                                  child: Icon(Icons.arrow_forward_ios,
                                      size: sIcon),
                                )
                              ]),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: hSP),
                    Container(
                      height: h,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(allP),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ...List.generate(10, (index) {
                              return SizedBox(
                                  width: a,
                                  child: productOld(
                                      b, T, R, L, hSp2, fSd, hSp3, fSm,context));
                            })
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: hSP1),
                    Container(
                      height: f,
                      decoration: const BoxDecoration(),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          ...List.generate(10, (index) {
                            return SizedBox(
                                width: c,
                                child: product22(d, hM, hM1, fM, index));
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    ),
  );
}
