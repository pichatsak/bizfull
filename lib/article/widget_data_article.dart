import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dataarticle() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 11),
                  child: const Icon(
                    FontAwesomeIcons.solidNewspaper,
                    color: Color(0xffa91f2e),
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Flexible(
                  child: Text(
                    "บทความ",
                    style: TextStyle(fontSize: 32, fontFamily: "Prompt-Medium"),
                  ),
                ),
              ],
            ),
          )),
      BootstrapCol(sizes: 'col-12', child: dataarticlenum0()),
      BootstrapCol(sizes: 'col-12', child: dataarticlenum0()),
      BootstrapCol(sizes: 'col-12', child: dataarticlenum0()),
      BootstrapCol(sizes: 'col-12', child: dataarticlenum0())
    ]),
  );
}

Widget dataarticlenum0() {
  double zP;
  if (Device.width > 1240) {
    zP = 250;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    zP = 200;
  } else if (Device.width >= 768 && Device.width <= 991) {
    zP = 250;
  } else if (Device.width >= 576 && Device.width <= 767) {
    zP = 250;
  } else {
    zP = 250;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-xl-3 col-lg-3 col-12',
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Center(
                child: Container(
              height: zP,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                    image: AssetImage("images/ar.png"),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  )),
            )))),
    BootstrapCol(
        sizes: 'col-xl-9 col-lg-9 col-12',
        child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 10, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "เราในเวอร์ชั่นที่ดีที่สุด",
                  style: TextStyle(fontSize: 28, fontFamily: "Prompt-Medium"),
                ),
                const SizedBox(height: 5),
                const Text(
                  "October 24, 2022 by Sirichaiwatt",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                const Text(
                  "ในช่วงเวลาที่ย่ำแย่ใครจะไปนึกถึงเรื่องดีๆออกในเมื่อปัญหาล้วนเข้ามารุมเร้าแต่บางครั้งมันเพียงเพราะหลงลืมตัวเราในเวอร์ชั่นที่ดีที่สุดไปแล้วจึงทำให้อะไรหลายอย่างไม่ดีขึ้นเลย #บทความสั้น #เปลี่ยนทัศนคติ",
                  style: TextStyle(fontSize: 16),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffed3023)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        child: Row(
                          children: const [
                            Text(
                              "อ่านบทความนี้",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )))
  ]);
}
