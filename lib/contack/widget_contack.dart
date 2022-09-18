import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget contack() {
  double fM1;
  double fM2;
  double fM3;
  double fM4;
  double pL;
  double pR;
  double pT;
  double pB;
  double hS;
  double hS1;
  if (Device.width > 991) {
    fM1 = 24;
    fM2 = 18;
    fM3 = 16;
    fM4 = 14;
    pL = 20;
    pR = 20;
    pT = 0;
    pB = 20;
    hS = 0;
    hS1 = 20;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM1 = 23;
    fM2 = 18;
    fM3 = 16;
    fM4 = 14;
    pL = 20;
    pR = 20;
    pT = 5;
    pB = 10;
    hS = 20;
    hS1 = 10;
  } else {
    fM1 = 20;
    fM2 = 16;
    fM3 = 14;
    fM4 = 13;
    pL = 20;
    pR = 20;
    pT = 5;
    pB = 10;
    hS = 20;
    hS1 = 10;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: EdgeInsets.only(left: pL, right: pR, top: pT),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 9),
                  child: const Icon(
                    FontAwesomeIcons.users,
                    color: Color(0xffa91f2e),
                    size: 16,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Text(
                    "ติดต่อเรา",
                    style:
                        TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: pB),
              child: Container(height: 1, color: Colors.black12),
            ),
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
              Row(
                children: [
                  Text(
                    'ช่องทางการติดต่อ',
                    style:
                        TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '8 ซอย 48 แยก 13 ถนนเพชรเกษม แขวงบางด้วน เขตภาษีเจริญ กรุงเทพมหานคร 10160',
                  style: TextStyle(fontSize: fM3),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'เบอร์โทรศัพท์ : 099-999-9999',
                  style: TextStyle(fontSize: fM3),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'ช่องทางการติดตาม',
                    style:
                        TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "images/line.svg",
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "images/facebook.svg",
                        width: 30,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      "images/instagram.svg",
                      width: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        "images/twitter.svg",
                        width: 30,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
    BootstrapCol(
        sizes: 'col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12',
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              SizedBox(height: hS),
              Row(
                children: [
                  Text(
                    'ติดต่อเจ้าหน้าที่',
                    style:
                        TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
              SizedBox(height: hS1),
              Column(
                children: [
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      child: const Icon(
                        FontAwesomeIcons.solidUser,
                        color: Color(0xffa91f2e),
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text("ชื่อ-นามสกุล", style: TextStyle(fontSize: fM4))
                  ]),
                  const SizedBox(height: 5),
                  TextFormField(
                    cursorColor: Colors.red,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'Input',
                        hintStyle: TextStyle(color: Colors.black38),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 1),
                      child: const Icon(
                        FontAwesomeIcons.solidEnvelope,
                        color: Color(0xffa91f2e),
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text("อีเมลของคุณ", style: TextStyle(fontSize: fM4))
                  ]),
                  const SizedBox(height: 5),
                  TextFormField(
                    cursorColor: Colors.red,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'Input',
                        hintStyle: TextStyle(color: Colors.black38),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      child: const Icon(
                        FontAwesomeIcons.mobileButton,
                        color: Color(0xffa91f2e),
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text("หมายเลขโทรศัพท์", style: TextStyle(fontSize: fM4))
                  ]),
                  const SizedBox(height: 5),
                  TextFormField(
                    cursorColor: Colors.red,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    decoration: const InputDecoration(
                        hintText: 'Input',
                        hintStyle: TextStyle(color: Colors.black38),
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(color: Colors.red, width: 1.0),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text("รายละเอียด",
                      style: TextStyle(
                          fontSize: fM3, fontFamily: "Prompt-Medium")),
                ],
              ),
              Row(
                children: [
                  Text("กรอกข้อมูลรายละเอียดที่ต้องการติดต่อ",
                      style: TextStyle(fontSize: fM4)),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                cursorColor: Colors.red,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                decoration: const InputDecoration(
                    hintText: 'Input',
                    hintStyle: TextStyle(color: Colors.black38),
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 40, 10, 40),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    )),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffed3023),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 8, bottom: 8),
                      child: Row(
                        children: const [
                          Text(
                            "ติดต่อ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ))
  ]);
}
