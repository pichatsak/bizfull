import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter1 { lafayette, jefferson }

Widget datashopcart1(character1, setState) {
  double iconsize;
  double namelist;
  double namelist1;
  double namelist2;
  double sizepicture;
  double hightfree;
  double hight1;
  double fontsele;
  int flexnum;
  if (Device.width > 991) {
    iconsize = 16;
    namelist = 15;
    namelist1 = 14;
    namelist2 = 13;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    flexnum = 4;
  } else if (Device.width >= 768 && Device.width <= 991) {
    iconsize = 16;
    namelist = 15;
    namelist1 = 14;
    namelist2 = 13;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    flexnum = 4;
  } else if (Device.width >= 576 && Device.width <= 767) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    flexnum = 3;
    namelist1 = 14;
    namelist2 = 13;
  } else {
    iconsize = 16;
    namelist = 15;
    namelist1 = 14;
    namelist2 = 13;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    flexnum = 2;
  }

  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: SizedBox(
              width: 800,
              //  color: const Color(0xfff3f3f3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffed3023),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 7, right: 7, top: 1, bottom: 1),
                                    child: Text(
                                      "LazPick",
                                      style: TextStyle(
                                          fontSize: namelist1,
                                          color: Colors.white),
                                    ))),
                            const SizedBox(width: 10),
                            Text('สินค้าน่าช้อป',
                                style: TextStyle(
                                    fontFamily: "Prompt-Bold",
                                    fontSize: namelist)),
                            const SizedBox(width: 10),
                            Icon(Icons.arrow_forward_ios, size: iconsize)
                          ],
                        ),
                        Text(
                          "รับคูปองส่วนลด",
                          style: TextStyle(
                              fontSize: namelist2, color: Colors.black54),
                        )
                      ],
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
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 17),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 213, 215),
                          borderRadius: BorderRadius.circular(7)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "ซื้อ3ลด฿10 , ซื้อ5ลด฿20",
                              style: TextStyle(
                                  fontSize: 12.5, color: Color(0xffed3023)),
                            ),
                            Row(
                              children: const [
                                Text(
                                  "ซื้อเพิ่ม",
                                  style: TextStyle(
                                      fontSize: 12.5, color: Color(0xffed3023)),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: Color(0xffed3023),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  ListTile(
                    title: BootstrapRow(children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-12 col-lg-2 col-sm-12',
                          child: Row(children: [
                            Center(
                                child: SizedBox(
                                    width: sizepicture,
                                    height: sizepicture,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7.0),
                                      child: Image.asset("images/1b.jpg",
                                          fit: BoxFit.cover,
                                          filterQuality: FilterQuality.high),
                                    ))),
                          ])),
                      BootstrapCol(
                          sizes: 'col-12 col-lg-10 col-sm-12',
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: hightfree),
                                const Text(
                                    "หมวกกันน็อครถจักรยานยนต์ helmet motorcycle helmet rally male personality fresh locomotive road safety helmet full helmet",
                                    style: TextStyle(fontSize: 13),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis),
                                SizedBox(height: hight1),
                                Row(children: const [
                                  Text("No Band,สี:black76*38*38 ",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black54)),
                                  Icon(Icons.keyboard_arrow_down, size: 18)
                                ]),
                                SizedBox(height: hight1),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black26),
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 4,
                                        right: 4,
                                        top: 0.5,
                                        bottom: 0.5),
                                    child: Text("ซื้อ3,ลด ฿10",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xffed3023))),
                                  ),
                                ),
                                SizedBox(height: hight1),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: flexnum,
                                      child: Text(
                                        "฿3,990",
                                        style: TextStyle(
                                          fontSize: fontsele,
                                          color: const Color(0xffed3023),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    left: BorderSide(
                                                        color: Colors.black26),
                                                    top: BorderSide(
                                                        color: Colors.black26),
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.black26))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.remove,
                                                size: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Theme(
                                              data: ThemeData(
                                                  primarySwatch: Colors.red,
                                                  fontFamily: "Prompt"),
                                              child: TextFormField(
                                                cursorColor: Colors.black,
                                                cursorWidth: 1,
                                                textAlign: TextAlign.center,
                                                initialValue: '1',
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  contentPadding:
                                                      EdgeInsets.fromLTRB(
                                                          4, 12, 4, 0),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  0.0))),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        color: Colors.black26),
                                                    top: BorderSide(
                                                        color: Colors.black26),
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.black26))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.add_rounded,
                                                size: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10)
                              ]))
                    ]),
                    leading: Radio<SingingCharacter1>(
                      value: SingingCharacter1.jefferson,
                      groupValue: character1,
                      onChanged: (SingingCharacter1? value) {
                        setState(() {
                          character1 = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
      BootstrapCol(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
          child: Center(
              child: Container(
            width: 765,
            height: 1,
            color: Colors.black12,
          )),
        ),
      )
    ]),
  );
}
