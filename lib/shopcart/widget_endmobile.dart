import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

enum SingingCharacter3 { lafayette, jefferson }

Widget endmobile(character3, setState) {
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
                  const SizedBox(height: 10),
                  ListTile(
                    title: BootstrapRow(children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-12 ',
                          child: const Text("ทั้งหมด",
                              style: TextStyle(fontSize: 14))),
                      BootstrapCol(
                          sizes: 'col-12 ',
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(children: const [
                              Text("ยอดรวม: ", style: TextStyle(fontSize: 14)),
                              Text("฿0.00",
                                  style: TextStyle(color: Color(0xffed3023))),
                              SizedBox(width: 2),
                              Icon(Icons.keyboard_arrow_up,
                                  size: 18, color: Color(0xffed3023)),
                            ]),
                          )),
                      BootstrapCol(
                        sizes: 'col-12 ',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffed3023),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, right: 25, top: 8, bottom: 8),
                                child: Row(
                                  children: const [
                                    Text(
                                      "ชำระเงิน(0)",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                    leading: Radio<SingingCharacter3>(
                      activeColor: const Color(0xffa91f2e),
                      value: SingingCharacter3.lafayette,
                      groupValue: character3,
                      onChanged: (SingingCharacter3? value) {
                        setState(() {
                          character3 = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ))
    ]),
  );
}
