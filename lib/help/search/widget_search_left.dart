import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var color = Colors.transparent;
Widget searchleft() {
  double fM1;
  double fM2;
  double pL;
  double pR;
  double pT;
  double pB;
  if (Device.width > 991) {
    fM1 = 36;
    fM2 = 20;
    pL = 20;
    pR = 60;
    pT = 0;
    pB = 30;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM1 = 23;
    fM2 = 16;
    pL = 20;
    pR = 20;
    pT = 10;
    pB = 20;
  } else {
    fM1 = 20;
    fM2 = 16;
    pL = 20;
    pR = 20;
    pT = 10;
    pB = 20;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pR, top: pT),
    child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "8 บทความจากการค้นหา ''รายการ''",
            style: TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
          ),
        ),
        const SizedBox(height: 30),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันจะยกเลิกการสมัครจากรายการส่งจดหมายของลาซาด้าได้อย่างไร?",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "วิธีตรวจสอบรายการชำระเงินผ่านลาซาด้าวอลเล็ต",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ช่วงเวลาในการปิดปรับปรุงระบบของธนาคารผู้ให้บริการ",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันสามารถเปลี่ยนช่องทางการชำระเงินหลังจากที่ทำรายการเรียบร้อยแล้วได้หรือไม่",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันจะอัปเดตข้อมูลในบัญชีของฉันได้อย่างไร",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันจะรู้ว่าการยกเลิกคำสั่งซื้อของฉันสำเร็จได้อย่างไร",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันจะตรวจสอบสถานะสินค้าของฉันได้อย่างไร",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: pB, bottom: pB),
          child: Container(height: 1, color: Colors.black12),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "ฉันไม่สามารถตรวจสอบสถานะสินค้าได้ ฉันควรทำอย่างไร",
              style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
            ),
          ),
        ),
      ],
    ),
  );
}
