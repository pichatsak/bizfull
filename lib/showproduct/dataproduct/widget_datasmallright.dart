import 'package:bizfull/showproduct/dataproduct/widget_menu_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget datasmallright() {
  double b;
  double h;
  double a;
  double T;
  double R;
  double L;
  double hSp2;
  double fSd;
  double hSp3;
  double fSm;
  String typ;
  if (Device.width > 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    b = 188;
    T = 5;
    R = 5;
    L = 5;
    a = 198.4;
    h = 292;
    typ = "xl";
  } else if (Device.width >= 992 && Device.width <= 1240) {
    hSp2 = 5;
    fSd = 14;
    hSp3 = 10;
    fSm = 18;
    b = 188;
    T = 5;
    R = 5;
    L = 5;
    a = 192;
    h = 292;
    typ = "lg";
  } else if (Device.width >= 768 && Device.width <= 991) {
    hSp2 = 5;
    fSd = 13;
    hSp3 = 5;
    fSm = 15;
    b = 180;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    a = 170;
    h = 263;
    typ = "lg";
  } else if (Device.width >= 576 && Device.width <= 767) {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    b = 180;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    a = 170;
    h = 261;
    typ = "sm";
  } else {
    hSp2 = 5;
    fSd = 12;
    hSp3 = 5;
    fSm = 13;
    b = 180;
    T = 3.5;
    R = 3.5;
    L = 3.5;
    a = 175;
    h = 261;
    typ = "xs";
  }
  return typ == "lg"
      ? SizedBox(height: h, child: menupro(b, T, R, L, hSp2, fSd, hSp3, fSm))
      : SizedBox(
          height: h, width: a, child: menupro(b, T, R, L, hSp2, fSd, hSp3, fSm));
}
