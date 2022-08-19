import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget mobileView(BuildContext context) {
  bootstrapGridParameters(gutterSize: 0);
  return Column(
    children: [
      BootstrapContainer(fluid: true, children: <Widget>[
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              invisibleForSizes: ' xl lg',
              sizes: 'col-12',
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfff499b5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: BootstrapContainer(fluid: false, children: <Widget>[
                      BootstrapRow(
                        children: <BootstrapCol>[
                          BootstrapCol(
                            sizes: 'col-12',
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
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
                                          top: 10,
                                          bottom: 10,
                                          right: 15),
                                      hintText:
                                          'ค้นหา สินค้าและบริการ รวมถึงข้อมูลต่างๆของบิซฟูล ที่นี่',
                                      hintStyle: const TextStyle(
                                          color: Colors.black54, fontSize: 12),
                                      border: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      suffixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xfff499b5),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(2.0),
                                            child: Icon(
                                              FontAwesomeIcons.magnifyingGlass,
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
