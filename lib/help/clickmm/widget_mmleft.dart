// ignore_for_file: unused_local_variable

import 'package:bizfull/models/help_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var color = Colors.transparent;
Widget mmleft(context, HelpModel itemData) {
  double fM;
  double zC;
  double pA;
  double tC;
  double bC;
  double wM;
  double fM1;
  double fM2;
  double fM3;
  double hS;
  double hS1;
  double pL;
  double pR;
  double pT;
  String mM;
  if (Device.width > 991) {
    fM = 32;
    mM = "pc";
    zC = 20;
    pA = 11;
    tC = 6;
    bC = 0;
    wM = 16;
    fM1 = 24;
    fM2 = 16;
    fM3 = 14;
    hS = 30;
    hS1 = 20;
    pL = 20;
    pR = 60;
    pT = 0;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM = 20;
    mM = "mobile";
    zC = 14;
    pA = 9;
    tC = 0;
    bC = 0;
    wM = 10;
    fM1 = 18;
    fM2 = 14;
    fM3 = 14;
    hS = 20;
    hS1 = 15;
    pL = 20;
    pR = 20;
    pT = 0;
  } else {
    fM = 18;
    mM = "mobile";
    zC = 14;
    pA = 8;
    tC = 0;
    bC = 0;
    wM = 10;
    fM1 = 17;
    fM2 = 14;
    fM3 = 13;
    hS = 15;
    hS1 = 10;
    pL = 20;
    pR = 20;
    pT = 0;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pR, top: pT),
    child: Column(
      children: [
        mM == "pc"
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: tC, bottom: bC),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(90, 240, 173, 181)),
                    child: Padding(
                      padding: EdgeInsets.all(pA),
                      child: Container(
                        margin: const EdgeInsets.only(top: 0),
                        child: Icon(
                          FontAwesomeIcons.store,
                          color: const Color(0xffa91f2e),
                          size: zC,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: wM,
                  ),
                  Flexible(
                    child: Text(
                      // "บัญชีของฉัน",
                      itemData.helpTitle,
                      style:
                          TextStyle(fontSize: fM, fontFamily: "Prompt-Medium"),
                    ),
                  ),
                ],
              )
            : Container(),
        mM == "pc"
            ? const SizedBox(
                height: 20,
              )
            : Container(),
        Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: HtmlWidget(itemData.helpDetail)),
        const SizedBox(
          height: 150,
        )
        // SizedBox(
        //   width: double.infinity,
        //   child: Text(
        //     "การจัดการบัญชี",
        //     style: TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {
        //       Navigator.of(context).pushNamed("/clickbabymm");
        //     },
        //     child: Text(
        //       "คำถามที่พบบ่อยเกี่ยวกับบัญชี",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "ฉันจะลงทะเบียนเพื่อสมัครบัญชีลาซาด้าได้อย่างไร",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "วิธีการยืนยันตัวตนเมื่อเข้าสู่ระบบ",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "วิธีเปลี่ยนภาษา",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "คำแนะนำการใช้งาน CLEO (แชทบอทคลีโอ)",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // Row(
        //   children: [
        //     InkWell(
        //       splashColor: Colors.transparent,
        //       hoverColor: Colors.transparent,
        //       highlightColor: Colors.transparent,
        //       onTap: () {},
        //       child: SizedBox(
        //         child: Row(
        //           children: [
        //             Text(
        //               "เพิ่มเติม",
        //               style: TextStyle(fontSize: fM3, color: Colors.red),
        //             ),
        //             const SizedBox(
        //               width: 10,
        //             ),
        //             Container(
        //                 margin: const EdgeInsets.only(bottom: 1),
        //                 child: const Icon(
        //                   FontAwesomeIcons.chevronDown,
        //                   size: 10,
        //                   color: Colors.red,
        //                 ))
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        // SizedBox(
        //   height: hS,
        // ),
        // Container(height: 1, color: Colors.black12),
        // SizedBox(
        //   height: hS1,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: Text(
        //     "โปรแกรม LazRewards",
        //     style: TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "LazRewards คืออะไร?",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: hS,
        // ),
        // Container(height: 1, color: Colors.black12),
        // SizedBox(
        //   height: hS1,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: Text(
        //     "เหรียญของฉัน",
        //     style: TextStyle(fontSize: fM1, fontFamily: "Prompt-Medium"),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "ข้อกำหนดการใช้ลาซคอยน์",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "คำถามทั่วไปเกี่ยวกับเหรียญ",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "เหรียญคืออะไร",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "ขั้นตอนการแลกเหรียญ",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // SizedBox(
        //   width: double.infinity,
        //   child: InkWell(
        //     borderRadius: BorderRadius.circular(5),
        //     onTap: () {},
        //     child: Text(
        //       "ทำไมกดเก็บเหรียญไม่ได้",
        //       style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
        //     ),
        //   ),
        // ),
        // const SizedBox(
        //   height: 15,
        // ),
        // Row(
        //   children: [
        //     InkWell(
        //       splashColor: Colors.transparent,
        //       hoverColor: Colors.transparent,
        //       highlightColor: Colors.transparent,
        //       onTap: () {},
        //       child: SizedBox(
        //         child: Row(
        //           children: [
        //             Text(
        //               "เพิ่มเติม",
        //               style: TextStyle(fontSize: fM3, color: Colors.red),
        //             ),
        //             const SizedBox(
        //               width: 10,
        //             ),
        //             Container(
        //                 margin: const EdgeInsets.only(bottom: 1),
        //                 child: const Icon(
        //                   FontAwesomeIcons.chevronDown,
        //                   size: 10,
        //                   color: Colors.red,
        //                 ))
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
      ],
    ),
  );
}
