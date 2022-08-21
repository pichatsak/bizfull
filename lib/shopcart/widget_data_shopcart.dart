import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter { lafayette, jefferson }

Widget datashopcart(character, setState) {
  double iconsize;
  double namelist;
  double sizepicture;
  double hightfree;
  double hight1;
  double fontsele;
  int flexnum;
  if (Device.width > 991) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    flexnum = 4;
  } else if (Device.width >= 768 && Device.width <= 991) {
    iconsize = 16;
    namelist = 15;
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
  } else {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    flexnum = 2;
  }
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: Container(
              width: 800,
              color: const Color(0xfff3f3f3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          child: Icon(FontAwesomeIcons.store,
                              color: const Color(0xffed3023), size: iconsize),
                        ),
                        const SizedBox(width: 10),
                        Text('สินค้าน่าชิป',
                            style: TextStyle(
                                fontFamily: "Prompt-Bold", fontSize: namelist)),
                        const SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios, size: iconsize)
                      ],
                    ),
                    leading: Radio<SingingCharacter>(
                      activeColor: const Color(0xffa91f2e),
                      value: SingingCharacter.lafayette,
                      groupValue: character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          character = value;
                        });
                      },
                    ),
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
                                    child: Image.asset("images/1b.jpg",
                                        fit: BoxFit.cover,
                                        filterQuality: FilterQuality.high))),
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
                                                    color: Colors.black,
                                                    fontSize: 16),
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
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.jefferson,
                      groupValue: character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ))
    ]),
  );
}
