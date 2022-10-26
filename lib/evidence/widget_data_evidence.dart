import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/evidence/widget_dropdow_evidence.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dataevidence(setState) {
  double tP;
  String typ;
  double tP1;
  double lP;
  double wP;
  if (Device.width > 1240) {
    tP = 20;
    typ = "pc";
    tP1 = 20;
    lP = 20;
    wP = 10;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    tP = 20;
    typ = "mobile";
    tP1 = 20;
    lP = 20;
    wP = 10;
  } else if (Device.width >= 768 && Device.width <= 991) {
    tP = 0;
    typ = "pc";
    tP1 = 30;
    lP = 20;
    wP = 10;
  } else {
    tP = 10;
    typ = "mobile";
    tP1 = 30;
    lP = 15;
    wP = 8;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-xl-6 col-12 col-lg-6 col-md-12',
        child: Padding(
          padding: EdgeInsets.only(left: lP, right: lP, top: tP),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              typ == "pc"
                  ? const Text(
                      "แจ้งการโอนเงิน",
                      style:
                          TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
                    )
                  : Container(),
              typ == "pc"
                  ? Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Container(height: 1, color: Colors.black12),
                    )
                  : Container(),
              Row(
                children: const [
                  SizedBox(
                    width: 65,
                    child: Text(
                      "ธนาคาร",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                    ),
                  ),
                  Text(
                    ":  ",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                  ),
                  Text(
                    "SCB ไทยพาณิชย์",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff3c0866),
                        fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(
                    width: 65,
                    child: Text(
                      "ชื่อบัญชี",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                    ),
                  ),
                  Text(
                    ":  ",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                  ),
                  Text(
                    "พิเชฐศักดิ์ ดุเหว่า",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(
                    width: 65,
                    child: Text(
                      "เลขบัญชี",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                    ),
                  ),
                  Text(
                    ":  ",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(190, 0, 0, 0)),
                  ),
                  Text(
                    "999-999-999-9",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                child: Image.asset(
                  "images/bank.jpg",
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        )),
    BootstrapCol(
        sizes: 'col-xl-6 col-12 col-lg-6 col-md-12',
        child: Padding(
          padding: EdgeInsets.only(left: lP, right: lP, top: tP1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "แบบฟอร์มการโอนเงิน",
                style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Container(height: 1, color: Colors.black12),
              ),
              Row(
                children: const [
                  Text(
                    "โอนเงินเข้า",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "*",
                    style: TextStyle(fontSize: 14, color: Color(0xffed3023)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              dropdownevidence(setState),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "วันที่ทำรายการ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "*",
                    style: TextStyle(fontSize: 14, color: Color(0xffed3023)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      cursorColor: Colors.red,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: 'mm/dd/yyyy',
                          hintStyle: TextStyle(color: Colors.black38),
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1.0),
                          )),
                    ),
                  ),
                  SizedBox(width: wP),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      backgroundColor: const Color(0xffed3023),
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 12, bottom: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 4),
                      child: Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          child: const Icon(
                            FontAwesomeIcons.solidCalendarDays,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "เวลาที่ทำรายการ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "*",
                    style: TextStyle(fontSize: 14, color: Color(0xffed3023)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              TextFormField(
                cursorColor: Colors.red,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: const Icon(
                        FontAwesomeIcons.clock,
                        color: Colors.black,
                      ),
                    ),
                    hintText: '--:-- --',
                    hintStyle: const TextStyle(color: Colors.black38),
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    )),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "แนบหลักฐานการโอนเงิน (pdf , jpg , png หรือ gif)",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "*",
                    style: TextStyle(fontSize: 14, color: Color(0xffed3023)),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(3),
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(31, 83, 83, 83),
                              border: Border.all(color: Colors.black45),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 2, bottom: 2),
                            child: Text("Choose File"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "No file chosen",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "ข้อความเพิ่มเติม (ถ้ามี)",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 5),
              const TextField(
                cursorColor: Colors.red,
                style: TextStyle(fontSize: 14, color: Colors.black),
                decoration: InputDecoration(
                    hintText: "Input",
                    hintStyle: TextStyle(color: Colors.black38),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    )),
                maxLines: 3,
              ),
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: typ == "pc" ? 0 : 4),
                    child: Stack(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffed3023)),
                              borderRadius: BorderRadius.circular(3),
                              color: const Color(0xffed3023)),
                        ),
                        SizedBox(
                            height: 20,
                            width: 20,
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(bottom: 2, left: 1),
                                child: const Icon(
                                  FontAwesomeIcons.check,
                                  color: Colors.white,
                                  size: 14,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  typ == "pc"
                      ? Row(
                          children: [
                            const Text(
                              "ฉันได้อ่านและยอมรับนโยบายความเป็นส่วนตัว อ่านต่อได้ที่นี่",
                              style: TextStyle(fontSize: 14),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: const Text(
                                " นโยบายความเป็นส่วนตัว",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: "Prompt-Medium"),
                              ),
                            ),
                            const Text(
                              "*",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffed3023)),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "ฉันได้อ่านและยอมรับนโยบายความเป็นส่วนตัว",
                              style: TextStyle(fontSize: 14),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "อ่านต่อได้ที่นี่",
                                  style: TextStyle(fontSize: 14),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {},
                                  child: const Text(
                                    " นโยบายความเป็นส่วนตัว",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Prompt-Medium"),
                                  ),
                                ),
                                const Text(
                                  "*",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xffed3023)),
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffed3023)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 8, bottom: 8),
                      child: Row(
                        children: const [
                          Text(
                            "ยืนยัน",
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
