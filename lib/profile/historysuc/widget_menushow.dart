import 'package:bizfull/models/order_detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget menushowhissuc() {
  double iconsize;
  double namelist;
  double sizepicture;
  double hightfree;
  double hight1;

  if (Device.width > 1240) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
  } else if (Device.width >= 768 && Device.width <= 991) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
  } else if (Device.width >= 576 && Device.width <= 767) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
  } else {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
  }
  return Padding(
    padding: const EdgeInsets.only(top: 15, left: 0, right: 0), //rdShow1
    child: Container(
      decoration: const BoxDecoration(
          color: Color(0xfff3f3f3),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
              bottomLeft: Radius.circular(7),
              bottomRight: Radius.circular(7))),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Icon(FontAwesomeIcons.store,
                    color: const Color(0xffed3023), size: iconsize),
              ),
              const SizedBox(width: 10),
              Text('สินค้าน่าชิป',
                  style:
                      TextStyle(fontFamily: "Prompt-Bold", fontSize: namelist)),
            ],
          ),
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
                child: SizedBox(
                    width: sizepicture,
                    height: sizepicture,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7.0),
                      child: Image.asset("images/1b.jpg",
                          fit: BoxFit.cover, filterQuality: FilterQuality.high),
                    ))),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: hightfree),
              const Text(
                  "หมวกกันน็อครถจักรยานยนต์ helmet motorcycle helmet rally male personality fresh locomotive road safety helmet full helmet",
                  style: TextStyle(fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              SizedBox(height: hight1),
              Row(children: const [
                Text("No Band,สี:black76*38*38 ",
                    style: TextStyle(fontSize: 12, color: Colors.black54)),
              ]),
              SizedBox(height: hight1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "฿3,990",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffed3023),
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "จำนวน : ",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10)
            ]),
          ),
          Container(
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 168, 168, 168),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "฿41.00 (ส่งแบบธรรมดา)",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}
