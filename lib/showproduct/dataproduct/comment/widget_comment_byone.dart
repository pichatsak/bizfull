import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget commentbyone() {
  double fC;
  if (Device.width > 991) {
    fC = 18;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fC = 18;
  } else {
    fC = 14;
  }
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(children:  <Widget>[
      Icon(Icons.star, color: const Color(0xffed3023), size: fC),
      Icon(Icons.star, color: const Color(0xffed3023), size: fC),
      Icon(Icons.star, color: const Color(0xffed3023), size: fC),
      Icon(Icons.star, color: const Color(0xffed3023), size: fC),
       Icon(Icons.star_border, color: const Color(0xffed3023), size: fC),
    ]),
    const SizedBox(height: 5),
    const Text("โดย พิเชฐศักดิ์ ดุเหว่า",
        style: TextStyle(fontSize: 12, color: Colors.black54)),
    const SizedBox(height: 5),
    const Text("27-08-2022 19.33",
        style: TextStyle(fontSize: 12, color: Colors.black54)),
    const SizedBox(height: 10),
    const Text(
        "ของสินค้าได้รับเร็วมาก และมีคุณภาพมากด้วย ไววันหลังจะมาสั่งอีกจ้า",
        style: TextStyle(fontSize: 14))
  ]);
}
