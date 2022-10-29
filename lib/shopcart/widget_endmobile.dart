import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum SingingCharacter3 { lafayette, jefferson }

var formatNum = NumberFormat('#,###,##0.00');
Widget endmobile(
    character3,
    setState,
    context,
    double totalAll,
    bool isCheckedAll,
    void Function(bool val) updateCheckAll,
    void Function() gotoNext) {
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
                        Row(children: [
                          const Text("ยอดรวม: ",
                              style: TextStyle(fontSize: 14)),
                          Text("฿${formatNum.format(totalAll)}",
                              style: const TextStyle(color: Color(0xffed3023))),
                          // SizedBox(width: 2),
                          // Icon(Icons.keyboard_arrow_up,
                          //     size: 18, color: Color(0xffed3023)),
                        ]),
                      ],
                    ),
                    leading: Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isCheckedAll,
                      onChanged: (bool? value) {
                        updateCheckAll(value!);
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
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffed3023),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ))),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/checkout");
                  gotoNext();
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 11, right: 11, top: 9, bottom: 9),
                  child: Row(
                    children: const [
                      Text(
                        "ถัดไป",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
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

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.blue;
  }
  return Colors.red;
}
