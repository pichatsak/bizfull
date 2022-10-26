import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget find() {
  double pad;
  double pad1;
  double fO;
  double hE;
  double hT;
  double hT1;
  double hS;
  double fM;
  String ok;
  String ok1;
  double tR;
  if (Device.width > 991) {
    pad = 20;
    pad1 = 0;
    fO = 33;
    hE = 200;
    hT = 20;
    hT1 = 20;
    hS = 10;
    fM = 15;
    ok = "pc";
    ok1 = "pc";
    tR = 15;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pad = 20;
    pad1 = 15;
    fO = 23;
    hE = 150;
    hT = 8;
    hT1 = 10;
    hS = 0;
    fM = 13;
    ok = "mobile";
    ok1 = "mobile";
    tR = 30;
  } else {
    pad = 10;
    pad1 = 15;
    fO = 20;
    hE = 115;
    hT = 9;
    hT1 = 10;
    hS = 0;
    fM = 13;
    ok = "mobile";
    ok1 = "mobile";
    tR = 15;
  }
  return Padding(
    padding: EdgeInsets.only(left: pad, right: pad),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Container(
            height: hE,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: const Color(0xffef4137),
            ),
            child: Padding(
              padding: EdgeInsets.all(pad1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "หมายเลขรายการสั่งซื้อของคุณ:",
                    style: TextStyle(
                        fontSize: fO,
                        color: Colors.white,
                        fontFamily: "Prompt-Medium"),
                  ),
                  SizedBox(height: hS),
                  ok == "pc"
                      ? Container(
                          width: 700,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: hT1, top: hT, bottom: hT, right: hT1),
                                hintText: 'eg.123456789',
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: fM),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffa91f2e)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Icon(
                                          FontAwesomeIcons.magnifyingGlass,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        )
                      : Container(
                          width: 500,
                          height: 40,
                          margin: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: hT1, top: hT, bottom: hT, right: hT1),
                                hintText: 'eg.123456789',
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: fM),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: InkWell(
                                    onTap: () {},
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xffa91f2e)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(
                                            FontAwesomeIcons.magnifyingGlass,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                        ),
                ],
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-12',
          child: ok1 == "pc"
              ? Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "รายละเอียดการจัดส่ง",
                        style: TextStyle(
                            fontSize: 18, fontFamily: "Prompt-Medium"),
                      ),
                      Text(
                        "ผลการค้นหาทั้งหมด 1 รายการ",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(top: tR),
                  child: Row(
                    children: const [
                      Text(
                        "รายละเอียดการจัดส่ง",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                ))
    ]),
  );
}
