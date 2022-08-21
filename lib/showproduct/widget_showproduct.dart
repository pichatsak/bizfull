import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/showproduct/widget_dataright.dart';
import 'package:bizfull/showproduct/widget_picture.dart';

import 'package:flutter/material.dart';

Widget showproduct(context) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: BootstrapContainer(fluid: false, children: [
          BootstrapRow(children: <BootstrapCol>[
            BootstrapCol(
                sizes: 'col-12',
                child: SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/");
                          },
                          child: const Text(
                            "หน้าแรก",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffed3023)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "สินค้าน่าชิป",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xffed3023)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "รองเท้า",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xffed3023)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "รองเท้าสไตล์มินิ",
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ))
          ])
        ]))
  ]);
}

Widget datashowproduct(context) {
  return BootstrapRow(
    children: <BootstrapCol>[
      BootstrapCol(
        sizes: 'col-12',
        child: BootstrapContainer(
            fluid: false,
            padding: const EdgeInsets.only(top: 20),
            children: <Widget>[
              BootstrapRow(
                children: <BootstrapCol>[
                  BootstrapCol(
                      sizes: 'col-md-12 col-12 col-lg-5',
                      child: BootstrapContainer(
                          fluid: true,
                          children: <Widget>[picture(), smallunderpicture()])),
                  BootstrapCol(
                      sizes: 'col-md-12 col-12 col-lg-7',
                      child: BootstrapContainer(fluid: true, children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: dataright1(context),
                        ),
                      ])),
                ],
              ),
            ]),
      )
    ],
  );
}
