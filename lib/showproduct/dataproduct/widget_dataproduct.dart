import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/showproduct/dataproduct/widget_data1.dart';
import 'package:bizfull/showproduct/dataproduct/widget_data2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

String data = 'data1';
Widget dataproduct(setState, ProductViewModel pdModel) {
  double lP;
  double rP;
  double f1;
  double bH;
  if (Device.width > 1240) {
    lP = 10;
    rP = 10;
    f1 = 18;
    bH = 50;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    lP = 10;
    rP = 10;
    f1 = 18;
    bH = 50;
  } else if (Device.width >= 768 && Device.width <= 991) {
    lP = 10; //md
    rP = 10;
    f1 = 16;
    bH = 50;
  } else {
    lP = 5;
    rP = 5;
    f1 = 14;
    bH = 40;
  }
  return Padding(
    padding: EdgeInsets.only(top: 10, left: lP, right: rP, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(7)),
          height: bH,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "ข้อมูลจำเพาะของสินค้า",
                style: TextStyle(
                  fontFamily: "Prompt-Medium",
                  fontSize: f1,
                ),
              ),
            ),
          ]),
        ),
        data1(pdModel),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(7)),
          height: bH,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "รายละเอียดสินค้า",
                style: TextStyle(
                  fontFamily: "Prompt-Medium",
                  fontSize: f1,
                ),
              ),
            ),
          ]),
        ),
        data2(pdModel)
      ],
    ),
  );
}
