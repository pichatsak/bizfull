import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/colums_model.dart';

import 'package:flutter/material.dart';

Widget bararticleView(context, ColumsModel itemData, bool isLoad) {
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
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/article");
                          },
                          child: const Text(
                            "บทความ",
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
                        isLoad
                            ? Text(
                                // "บทความ",
                                itemData.colTitle,
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.black87),
                              )
                            : const SizedBox(
                                height: 0,
                              ),
                      ],
                    ),
                  ),
                ))
          ])
        ]))
  ]);
}
