import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget queist() {
  double fM;
  double pL;
  double tM;
  double mT;
  double fZ;
  double pL1;
  if (Device.width > 991) {
    fM = 24;
    pL = 15;
    tM = 30;
    mT = 9;
    fZ = 18;
    pL1 = 5;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM = 17;
    pL = 15;
    tM = 10;
    mT = 7;
    fZ = 14;
    pL1 = 5;
  }  else {
    fM = 15;
    pL = 5;
    tM = 10;
    mT = 6;
    fZ = 13;
    pL1 = 20;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pL),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Padding(
            padding: EdgeInsets.only(top: tM, bottom: 15, right: 5, left: 5),
            child: Text(
              "คำถามที่พบบ่อย",
              style: TextStyle(fontSize: fM, fontFamily: "Prompt-Medium"),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      '[การติดตามสถานะคำสั่งซื้อ] ฉันจะได้รับสินค้าที่สั่งซื้อเมื่อไหร่?',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      '[บัญชีของฉัน] ฉันจะเพิ่ม/แก้ไข/ลบที่อยู่ของฉันได้อย่างไร',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'รู้จักวิธีการใช้โค้ดรูปแบบใหม่',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'ทำไมฉันถึงไม่ได้รับรหัส OTP?',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'ต้องทำอย่างไร หากไม่สามารถสั่งซื้อสินค้าได้',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'สินค้าของฉันอยู่ไหน',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'ใช้คูปองอย่างไรให้คุ้มที่สุด',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
      BootstrapCol(
          sizes: 'col-xl-6 col-12 col-sm-12 col-md-6',
          child: Padding(
              padding: EdgeInsets.only(left: pL1, right: 20, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: mT),
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'หากต้องการคืนสินค้าฉันต้องทำอย่างไร',
                      style: TextStyle(fontSize: fZ),
                    ),
                  ),
                ],
              ))),
    ]),
  );
}
