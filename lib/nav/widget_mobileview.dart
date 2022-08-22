import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/tools/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';

class NavMobiles extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  NavMobiles({Key? key}) : super(key: key);

  @override
  State<NavMobiles> createState() => _NavMobilesState();
}

class _NavMobilesState extends State<NavMobiles> {
  final box = GetStorage();

  late Color curColor = const Color.fromARGB(0, 0, 0, 0);
  @override
  void initState() {
    if (box.read("curpage") == "home") {
    } else {
      setState(() {
        curColor = HexColor.fromHex(box.read("colorCur"));
      });
    }
    super.initState();
  }

  @override
  void didUpdateWidget(covariant NavMobiles oldWidget) {
    if (box.read("isShowNav")) {
      curColor = HexColor.fromHex(box.read("colorNav"));
    } else {
      curColor = const Color.fromARGB(0, 0, 0, 0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    return Column(
      children: [
        BootstrapContainer(fluid: true, children: <Widget>[
          BootstrapRow(children: <BootstrapCol>[
            BootstrapCol(
                invisibleForSizes: ' xl lg',
                sizes: 'col-12',
                child: Container(
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(0, 0, 0, 0),
                        color: curColor),
                    // color: Colors.pink,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child:
                          BootstrapContainer(fluid: false, children: <Widget>[
                        BootstrapRow(
                          children: <BootstrapCol>[
                            BootstrapCol(
                              sizes: 'col-12',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 5),
                                child: SizedBox(
                                  height: 40,
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 12),
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(
                                            left: 15,
                                            top: 7,
                                            bottom: 10,
                                            right: 15),
                                        hintText:
                                            'ค้นหา สินค้าและบริการ รวมถึงข้อมูลต่างๆของบิซฟูล ที่นี่',
                                        hintStyle: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        suffixIcon: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, top: 5, bottom: 5),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xffa91f2e),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(1.0),
                                              child: Icon(
                                                FontAwesomeIcons
                                                    .magnifyingGlass,
                                                color: Colors.white,
                                                size: 12,
                                              ),
                                            ),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                    )))
          ])
        ]),
      ],
    );
  }
}
