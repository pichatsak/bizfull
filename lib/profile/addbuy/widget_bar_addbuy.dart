import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

Widget baraddbuy(context) {
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
                        InkWell(onTap: () {
                          Navigator.of(context).pushNamed("/profile_historysuc");
                        },
                          child: const Text(
                            "ประวัติการซื้อ",
                            style: TextStyle(fontSize: 13, color: Color(0xffed3023)),
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
                          "ที่ต้องชำระ",
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ))
          ])
        ]))
  ]);
}
