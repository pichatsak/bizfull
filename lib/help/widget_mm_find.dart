import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget mmFind() {
  double pad;
  double pad1;
  double fO;
  double hE;
  double hT;
  double hS;
  String ok;
  if (Device.width > 991) {
    pad = 20;
    pad1 = 0;
    fO = 33;
    hE = 200;
    hT = 20;
    hS = 10;
    ok = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    pad = 20;
    pad1 = 15;
    fO = 23;
    hE = 150;
    hT = 8;
    hS = 0;
    ok = "mobile";
  } else {
    pad = 10;
    pad1 = 15;
    fO = 20;
    hE = 115;
    hT = 9;
    hS = 0;
    ok = "mobile";
  }
  return Padding(
    padding: EdgeInsets.only(left: pad, right: pad),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Container(
            height: hE,
            color: const Color(0xffef4137),
            child: Padding(
              padding: EdgeInsets.all(pad1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "สวัสดี มีอะไรให้ฉันช่วยไหม?",
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
                                    left: 20, top: hT, bottom: hT, right: 20),
                                hintText: 'ค้นหา หัวข้อ,คำถาม...',
                                hintStyle:
                                    const TextStyle(color: Colors.black54),
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
                                    left: 10, top: hT, bottom: hT, right: 10),
                                hintText: 'ค้นหา หัวข้อ,คำถาม...',
                                hintStyle: const TextStyle(
                                    color: Colors.black54, fontSize: 13),
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
                        ),
                ],
              ),
            ),
          ))
    ]),
  );
}
