import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

enum SingingCharacter3 { lafayette, jefferson }

Widget endmobile(character3, setState, context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: SizedBox(
              width: 800,
              //    color: const Color(0xfff3f3f3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 10),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("ทั้งหมด", style: TextStyle(fontSize: 14)),
                        Row(children: const [
                          Text("ยอดรวม: ", style: TextStyle(fontSize: 14)),
                          Text("฿3,900.00",
                              style: TextStyle(color: Color(0xffed3023))),
                          // SizedBox(width: 2),
                          // Icon(Icons.keyboard_arrow_up,
                          //     size: 18, color: Color(0xffed3023)),
                          
                        ]),
                      ],
                    ),
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
          )),
      BootstrapCol(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/checkout");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffed3023),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 8, bottom: 8),
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
              ),
            ],
          ),
        ),
      )
    ]),
  );
}
