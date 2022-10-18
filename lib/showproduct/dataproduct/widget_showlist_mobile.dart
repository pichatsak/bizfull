import 'package:bizfull/homepage/shipping/widget_show_product_shipping.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget showlistmobile(context) {
  double a;
  double b;
  double T;
  double R;
  double L;
  double hSp2;
  double fSd;
  double hSp3;
  double fSm;
  double h;
  double allP;
  if (Device.width > 991) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    a = 198.4;
    b = 188;
    T = 5;
    R = 5;
    L = 5;
    allP = 5;
    h = 292;
  } else if (Device.width >= 768 && Device.width <= 991) {
    hSp2 = 0;
    fSd = 12;
    hSp3 = 5;
    fSm = 15;
    a = 130;
    b = 125;
    T = 3.5;
    allP = 5;
    R = 3.5;
    L = 3.5;
    h = 209;
  } else {
    hSp2 = 0;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    a = 100;
    allP = 3.5;
    b = 95;
    T = 3.5;
    h = 172;
    R = 3.5;
    L = 3.5;
  }
  return Container(color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        height: h,
        child: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Padding(
            padding: EdgeInsets.only(top: allP, left: allP, bottom: allP, right: 0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ...List.generate(10, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(7)),
                        width: a,
                        child: productOld(b, T, R, L, hSp2, fSd, hSp3, fSm, context)),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
