import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter1 { lafayette, jefferson }

Widget bin(character1, setState) {
  String typbin;
  double hy;

  if (Device.width > 1240) {
    typbin = "pc";
    hy = 20;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    typbin = "lg";
    hy = 10;
  } else {
    typbin = "pc";
    hy = 20;
  }
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        typbin == "pc"
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          child: const Icon(
                            FontAwesomeIcons.receipt,
                            size: 18,
                            color: Color(0xffa91f2e),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "เลือกวิธีการชำระเงิน",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("ดูวิธีชำระทั้งหมด",
                          style: TextStyle(
                              fontSize: 13, color: Color(0xffed3023))),
                      Container(
                        margin: const EdgeInsets.only(top: 2.5),
                        child: Stack(children: [
                          Container(
                            margin: const EdgeInsets.only(left: 3),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Color(0xffed3023),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 9),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Color(0xffed3023),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 10,
                              color: Color(0xffed3023),
                            ),
                          )
                        ]),
                      ),
                    ],
                  )
                ],
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          child: const Icon(
                            FontAwesomeIcons.receipt,
                            size: 18,
                            color: Color(0xffa91f2e),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "เลือกวิธีการชำระเงิน",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("ดูวิธีชำระทั้งหมด",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffed3023))),
                        Container(
                          margin: const EdgeInsets.only(top: 2.5),
                          child: Stack(children: [
                            Container(
                              margin: const EdgeInsets.only(left: 3),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: Color(0xffed3023),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 9),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: Color(0xffed3023),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 10,
                                color: Color(0xffed3023),
                              ),
                            )
                          ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
        SizedBox(height: hy),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffa91f2e)),
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(19, 241, 167, 160)),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 8),
            child: ListTile(
              title: const Text(
                'พร้อมเพย์',
                style: TextStyle(fontSize: 15),
              ),
              // subtitle: const Text(
              //   'ชำระเงินเมื่อได้รับสินค้า',
              //   style: TextStyle(fontSize: 12),
              // ),
              trailing: SvgPicture.asset(
                "images/qrcode.svg",
                width: 25,
                height: 25,
              ),
              leading: Radio<SingingCharacter1>(
                activeColor: const Color(0xffa91f2e),
                value: SingingCharacter1.lafayette,
                groupValue: character1,
                onChanged: (SingingCharacter1? value) {
                  setState(() {
                    character1 = value;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.circular(5),
            // gradient: const LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomLeft,
            //   stops: [0.0, 1.0],
            //   colors: [
            //     Color(0xfff8d20f),
            //     Color(0xfff2890c),
            //   ],
            // ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 8),
                child: ListTile(
                  title: const Text(
                    'Truemoney Wallet',
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: Image.asset(
                    'images/true.png',
                    height: 60.0,
                    width: 60.0,
                  ),
                  leading: Radio<SingingCharacter1>(
                    activeColor: const Color(0xffa91f2e),
                    value: SingingCharacter1.jefferson,
                    groupValue: character1,
                    onChanged: (SingingCharacter1? value) {
                      setState(() {
                        character1 = value;
                      });
                    },
                  ),
                ),
              ),
              // Container(
              //   height: 1,
              //   color: Colors.black12,
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       const Text(
              //         'กดเพื่อเพิ่มบัตรเครดิต',
              //         style: TextStyle(fontSize: 12),
              //       ),
              //       Row(
              //         children: [
              //           SvgPicture.asset(
              //             'images/master.svg',
              //             height: 20.0,
              //             width: 20.0,
              //             allowDrawingOutsideViewBox: true,
              //           ),
              //           const SizedBox(width: 5),
              //           SvgPicture.asset(
              //             'images/jcb.svg',
              //             height: 20.0,
              //             width: 20.0,
              //             allowDrawingOutsideViewBox: true,
              //           ),
              //           const SizedBox(width: 5),
              //           SvgPicture.asset(
              //             'images/visa.svg',
              //             height: 20.0,
              //             width: 20.0,
              //             allowDrawingOutsideViewBox: true,
              //           ),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 2),
                child: const Icon(
                  FontAwesomeIcons.tag,
                  size: 18,
                  color: Color(0xffa91f2e),
                )),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "คูปองส่วนลด",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "กรุณาระบุคูปองส่วนลด",
                      hintStyle: TextStyle(fontSize: 13, color: Colors.black54),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 46.5,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xff2e3192),
              ),
              child: const Center(
                  child: Text(
                "ยืนยัน",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: const Icon(
                  FontAwesomeIcons.cartArrowDown,
                  size: 18,
                  color: Color(0xffa91f2e),
                )),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "สรุปข้อมูลคำสั่งซื้อ",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "ยอดรวม (2)",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              "฿1,995.00",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "ค่าจัดส่ง",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              "฿81.00",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(height: 1, color: Colors.black12),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "ยอดรวมทั้งสิ้น",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "฿2,076.00",
              style: TextStyle(fontSize: 16, color: Color(0xffed3023)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
            height: 45,
            decoration: BoxDecoration(
                color: const Color(0xffed3023),
                borderRadius: BorderRadius.circular(3)),
            child: const Center(
                child: Text(
              "สั่งซื้อ",
              style: TextStyle(fontSize: 14, color: Colors.white),
            )))
      ],
    ),
  );
}
