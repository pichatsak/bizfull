import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/contack/form_contact.dart';
import 'package:bizfull/models/contact_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

Widget contack(ContactModel itemData) {
  double fM1;
  double fM2;
  double fM3;
  double pL;
  double pR;
  double pT;
  double pB;
  String hT;
  if (Device.width > 991) {
    fM1 = 24;
    fM2 = 18;
    fM3 = 16;
    pL = 20;
    pR = 20;
    pT = 0;
    pB = 20;
    hT = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM1 = 23;
    fM2 = 18;
    fM3 = 16;
    pL = 20;
    pR = 20;
    pT = 0;
    pB = 10;
    hT = "mobile";
  } else {
    fM1 = 20;
    fM2 = 16;
    fM3 = 14;
    pL = 20;
    pR = 20;
    pT = 0;
    pB = 10;
    hT = "mobile";
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: EdgeInsets.only(left: pL, right: pR, top: pT),
        child: Column(
          children: [
            hT == "pc"
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 9),
                        child: const Icon(
                          LineAwesomeIcons.phone_volume,
                          color: Color(0xffa91f2e),
                          size: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Text(
                          "ติดต่อเรา",
                          style: TextStyle(
                              fontSize: fM1, fontFamily: "Prompt-Medium"),
                        ),
                      ),
                    ],
                  )
                : Container(),
            hT == "pc"
                ? Padding(
                    padding: EdgeInsets.only(top: 10, bottom: pB),
                    child: Container(height: 1, color: Colors.black12),
                  )
                : Container(),
          ],
        ),
      ),
    ),
    BootstrapCol(
        sizes: 'col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12',
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              SizedBox(
                width: 600,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'ช่องทางการติดต่อ',
                          style: TextStyle(
                              fontSize: fM2, fontFamily: "Prompt-Medium"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        '${itemData.ctAdr} ${itemData.dict} ${itemData.amp} ${itemData.prov} ${itemData.ctPost}',
                        style: TextStyle(fontSize: fM3),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'เบอร์โทรศัพท์ : ${itemData.ctPhone}',
                        style: TextStyle(fontSize: fM3),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'อีเมล : ${itemData.ctEmail}',
                        style: TextStyle(fontSize: fM3),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'ช่องทางการติดตาม',
                          style: TextStyle(
                              fontSize: fM2, fontFamily: "Prompt-Medium"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            js.context.callMethod('open', [itemData.ctLine]);
                          },
                          child: SvgPicture.asset(
                            "images/line.svg",
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: InkWell(
                            onTap: () {
                              js.context
                                  .callMethod('open', [itemData.ctFacebook]);
                            },
                            child: SvgPicture.asset(
                              "images/facebook.svg",
                              width: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            js.context.callMethod('open', [itemData.ctInsta]);
                          },
                          child: SvgPicture.asset(
                            "images/instagram.svg",
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
    BootstrapCol(
        sizes: 'col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12',
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [FormContactPage()],
          ),
        ))
  ]);
}
