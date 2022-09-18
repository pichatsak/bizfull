import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget adddress() {
  double f;
  double ff;

  if (Device.width > 991) {
    f = 14;
    ff = 12;
  } else if (Device.width >= 768 && Device.width <= 991) {
    f = 14;
    ff = 12;
  } else {
    f = 13;
    ff = 11;
  }
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: const Icon(
                      FontAwesomeIcons.locationDot,
                      size: 18,
                      color: Color(0xffa91f2e),
                    )),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "ที่อยู่ในการจัดส่ง",
                  style: TextStyle(fontSize: 14, fontFamily: "Prompt-Medium"),
                ),
              ],
            ),
            const Text(
              "แก้ไข",
              style: TextStyle(fontSize: 13, color: Color(0xffed3023)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 1,
          color: Colors.black12,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              "พิเชฐศักดิ์ ดุเหว่า",
              style: TextStyle(fontSize: f),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "0932430369",
              style: TextStyle(fontSize: f),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffed3023),
                  borderRadius: BorderRadius.circular(90)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 1, bottom: 1, left: 15, right: 15),
                child: Flexible(
                  child: Text(
                    "ที่บ้าน",
                    style: TextStyle(fontSize: ff, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Text(
                "K.พิเชฐศักดิ์ ดุเหว่า ห้อง223 T.093-2430369 ส.วัฒนาอพาร์ตเม้นต์ รัตนาธิเบศร์ 54 เลี่ยงเมืองนนทบุรี ซ.10 ต.บางกระสอ อ.เมืองนนทบุรี จ.นนทบุรี 11000, 11000, เมืองนนทบุรี/ Mueang Nonthaburi, นนทบุรี/ Nonthaburi",
                style: TextStyle(fontSize: f),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
