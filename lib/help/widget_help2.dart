import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget help2(context) {
  double fM;
  double pL;
  double tM;
  double fZ;
  if (Device.width > 991) {
    fM = 24;
    pL = 15;
    tM = 40;
    fZ = 16;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM = 17;
    pL = 15;
    tM = 10;
    fZ = 15;
  } else {
    fM = 15;
    pL = 5;
    tM = 10;
    fZ = 14;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pL),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Padding(
            padding: EdgeInsets.only(top: tM, bottom: 15, right: 5, left: 5),
            child: Text(
              "แจ้งปัญหาการใช้งานเพิ่มเติม?",
              style: TextStyle(fontSize: fM, fontFamily: "Prompt-Medium"),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-12 col-sm-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            // child: Container(
            //   height: 70,
            //   decoration: BoxDecoration(
            //       color: const Color(0xfff3f3f3),
            //       borderRadius: BorderRadius.circular(5)),
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 20, right: 20),
            //     child: Row(
            //       children: [
            //         Container(
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(90),
            //               color: const Color.fromARGB(90, 240, 173, 181)),
            //           child: Padding(
            //             padding: const EdgeInsets.all(10.0),
            //             child: Container(
            //               margin: const EdgeInsets.only(bottom: 0),
            //               child: const Icon(
            //                 FontAwesomeIcons.store,
            //                 color: Color(0xffa91f2e),
            //                 size: 16,
            //               ),
            //             ),
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 20,
            //         ),
            //         Container(color: Colors.green,
            //           child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //             children:  [
            //               Text(
            //                 'Email',
            //                 style: TextStyle(fontSize: 14, fontFamily: "Prompt-Medium"),

            //               ),
            //                Text(
            //                 'แจ้งปัญหาเพิ่มเติม',
            //                 style: TextStyle(fontSize: 14),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xfff3f3f3),
                  borderRadius: BorderRadius.circular(5)),
              child: Material(
                color: Colors.transparent,
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onTap: () {
                    Navigator.of(context).pushNamed("/sendmail");
                  },
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromARGB(90, 240, 173, 181)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 0),
                        child: Icon(
                          FontAwesomeIcons.envelope,
                          color: const Color(0xffa91f2e),
                          size: fZ,
                        ),
                      ),
                    ),
                  ),
                  title: const Text(
                    'Email',
                    style: TextStyle(fontSize: 14),
                  ),
                  subtitle: const Text(
                    'แจ้งปัญหาเพิ่มเติม',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
          )),
    ]),
  );
}
