import 'package:bizfull/international%20shipping/ship/widget_num0data_ship.dart';
import 'package:bizfull/international%20shipping/ship/widget_num1data_ship.dart';
import 'package:bizfull/international%20shipping/ship/widget_num2data_ship.dart';
import 'package:bizfull/international%20shipping/ship/widget_num3data_ship.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget datainternationalship() {
  EdgeInsets p1;
  EdgeInsets p0;
  double allP;
  double cc;

  if (Device.width > 1240) {
    p1 = const EdgeInsets.only(left: 90, right: 90);
    p0 = const EdgeInsets.only(left: 20, right: 20, top: 20);
    allP = 30;
    cc = 20;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    p1 = const EdgeInsets.only(left: 0, right: 0);
    p0 = const EdgeInsets.only(left: 20, right: 20, top: 20);
    allP = 15;
    cc = 20;
  } else if (Device.width >= 768 && Device.width <= 991) {
    p1 = const EdgeInsets.only(left: 5, right: 5);
    p0 = const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10);
    allP = 15;
    cc = 15;
  } else {
    p1 = const EdgeInsets.only(left: 0, right: 0);
    p0 = const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15);
    allP = 10;
    cc = 10;
  }
  return Padding(
    padding: p0,
    child: Padding(
      padding: p1,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cc),
        ),
        margin: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.all(allP),
          child: Row(
            children: <Widget>[
              num0dataship(),
              Expanded(
                  flex: 1,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(cc),
                            bottomLeft: Radius.circular(cc)),
                      ),
                      margin: EdgeInsets.zero,
                      elevation: 5,
                      child: num1dataship())),
              Expanded(
                  flex: 1,
                  child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 5,
                      child: num2dataship())),
              Expanded(
                  flex: 1,
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(cc),
                            bottomRight: Radius.circular(cc)),
                      ),
                      margin: EdgeInsets.zero,
                      elevation: 5,
                      child: num3dataship())),
            ],
          ),
        ),
      ),
    ),
  );
}
