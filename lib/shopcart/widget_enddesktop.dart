import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

enum SingingCharacter2 { lafayette, jefferson }

Widget enddesktop(character2, setState, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: Container(
              width: 800,
              decoration: BoxDecoration(
                  //  color: const Color(0xfff3f3f3),
                  borderRadius: BorderRadius.circular(7)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 10),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("ทั้งหมด", style: TextStyle(fontSize: 14)),
                        Row(
                          children: [
                            Row(children: const [
                              Text("ยอดรวม: ", style: TextStyle(fontSize: 14)),
                              Text("฿0.00",
                                  style: TextStyle(color: Color(0xffed3023))),
                              // SizedBox(width: 2),
                              // Icon(Icons.keyboard_arrow_up,
                              //     size: 18, color: Color(0xffed3023)),
                              SizedBox(width: 15),
                            ]),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffed3023),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ))),
                              onPressed: () {
                                Navigator.of(context).pushNamed("/checkout");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 11, right: 11, top: 9, bottom: 9),
                                child: Row(
                                  children: const [
                                    Text(
                                      "ชำระเงิน",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    leading: Radio<SingingCharacter2>(
                      activeColor: const Color(0xffa91f2e),
                      value: SingingCharacter2.lafayette,
                      groupValue: character2,
                      onChanged: (SingingCharacter2? value) {
                        setState(() {
                          character2 = value;
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
