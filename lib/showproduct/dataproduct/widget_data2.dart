import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget data2() {
  double f1;
  double f2;
  if (Device.width > 1240) {
    f1 = 14;
    f2 = 16;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    f1 = 14;
    f2 = 16;
  } else if (Device.width >= 768 && Device.width <= 991) {
//md
    f1 = 14;
    f2 = 16;
  } else {
    f1 = 14;
    f2 = 14;
  }
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "คุณสมบัติ",
          style: TextStyle(fontSize: f2),
        ),
        const SizedBox(height: 5),
        Text(
            '- เหมาะสำหรับใช้เช็ดน้ำหลังล้างรถ เช็ดแห้ง เช็ดลงแว็กซ์ เช็ดในตัวรถยนต์อาทิตามช่องแอร์ หน้าปัดรถยนต์ และชิ้นส่วนต่างๆในรถ',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 5),
        Text('- ใช้เช็ดเก็บฝุ่นรถยนต์ได้เป็นอย่างดีเยี่ยม',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 5),
        Text(
            '- เนื้อผ้าหนานุ่ม เก็บและซับน้ำได้เป็นอย่างดีด้วยคุณสมบัติผ้าแบบพิเศษ',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 5),
        Text(
            '- เช็ดได้หลากหลายงานและประยุกต์ใช้ได้หลายแบบ อาทิ เช็ดคราบต่างๆ ทำความสะอาดบ้าน เช็ดหน้าจอมือถือ',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 5),
        Text('- เนื้อผ้านุ่มมากหมดกังวลเรื่องรอยขีดข่วน',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 5),
        Text('- เนื้อผ้าทนนานใช้งานได้อย่างยาวนาน',
            style: TextStyle(fontSize: f1)),
        const SizedBox(height: 20),
        const Text(
            '#ผ้าไมโครไฟเบอร์3D #ผ้าเช็ดรถเกรดดี #ผ้าไมโครเกรดพรีเมี่ยม #ผ้าไมโครแบบหนา #อุปกรณ์ล้างรถ'),
        // const SizedBox(height: 25),
        // Center(
        //   child: Image.asset(
        //     "images/data.png",
        //     filterQuality: FilterQuality.high,
        //     fit: BoxFit.contain,
        //   ),
        // ),
        // const SizedBox(height: 10),
        // Center(
        //   child: Image.asset(
        //     "images/data1.png",
        //     filterQuality: FilterQuality.high,
        //     fit: BoxFit.contain,
        //   ),
        // ),
        const SizedBox(height: 25),
        Center(
          child: Container(
            width: 90,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffed3023)),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ดูเพิ่ม',
                    style: TextStyle(color: Color(0xffed3023)),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      child: const Icon(FontAwesomeIcons.chevronDown,
                          size: 14, color: Color(0xffed3023))),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}