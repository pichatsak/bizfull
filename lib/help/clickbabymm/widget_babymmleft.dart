import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var color = Colors.transparent;
Widget babymmleft() {
  double fM1;
  double fM2;
  double pL;
  double pR;
  double pT;
  if (Device.width > 991) {
    fM1 = 36;
    fM2 = 16;
    pL = 20;
    pR = 60;
    pT = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM1 = 23;
    fM2 = 14;
    pL = 20;
    pR = 20;
    pT = 10;
  } else {
    fM1 = 20;
    fM2 = 14;
    pL = 20;
    pR = 20;
    pT = 10;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pR,top: pT),
    child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "คำถามที่พบบ่อยเกี่ยวกับบัญชี",
            style: TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: const Icon(FontAwesomeIcons.clock,
                    size: 12, color: Colors.black54)),
            const SizedBox(width: 5),
            const Text(
              "อัปเดตล่าสุด 11/09/2565",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Container(height: 1, color: Colors.black12),
        ),
        const SizedBox(
          height: 10,
        ),
         SizedBox(
          width: double.infinity,
          child: Text(
            "วิธีเปลี่ยนที่อยู่หรือหมายเลขโทรศัพท์",
            style: TextStyle(fontSize: fM2),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          "images/we.png",
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        )
      ],
    ),
  );
}
