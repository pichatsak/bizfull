import 'package:bizfull/checkout/widget_dialog_address1.dart';
import 'package:bizfull/checkout/widget_dialog_address1_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum Addressradio { lafayette, rediotwo }

Widget adddress(context, addressradio, setState) {
  double f;
  double ff;
  double lP;
  double rP;
  String tYP;

  if (Device.width > 991) {
    f = 14;
    ff = 12;
    lP = 0;
    rP = 15;
    tYP = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    f = 14;
    ff = 12;
    lP = 0;
    rP = 10;
    tYP = "mobile";
  } else {
    f = 13;
    ff = 11;
    lP = 0;
    rP = 10;
    tYP = "mobile";
  }
  return Padding(
    padding: EdgeInsets.only(right: rP, bottom: 25, left: lP),
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
            InkWell(
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () => showDialog<String>(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  insetPadding: tYP == "pc"
                      ? const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 24.0)
                      : const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 24.0),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  contentPadding: const EdgeInsets.only(top: 0.0),
                  content: tYP == "pc"
                      ? dialog1(context, addressradio, setState)
                      : dialog1mobile(context),
                ),
              ),
              child: const Text(
                "แก้ไข",
                style: TextStyle(fontSize: 13, color: Color(0xffed3023)),
              ),
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
