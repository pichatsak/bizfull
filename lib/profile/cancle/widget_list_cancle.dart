import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/order_view_model.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var formatNum = NumberFormat('#,###,###.00');
NumberFormat formatterCode = NumberFormat("00000");
Widget listcancle(context, key, OrderViewModel item,
    void Function(String value, int pos) updateViewOrder, int posItem) {
  return Container(
    decoration: BoxDecoration(
        color: posItem % 2 == 0 ? Colors.white : const Color(0xfff3f3f3),
        borderRadius: BorderRadius.circular(7)),
    child: Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: BootstrapRow(children: <BootstrapCol>[
        BootstrapCol(
            sizes: 'col-2',
            child: SizedBox(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "#${formatterCode.format(item.odId)}",
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                ),
              )),
            )),
        BootstrapCol(
            sizes: 'col-2',
            child: SizedBox(
              child: Center(
                  child: Column(
                children: [
                  Text(
                    item.odCreate,
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  // Text(
                  //   "เวลา 19.42 น.",
                  //   style: TextStyle(fontSize: 13, color: Colors.black),
                  // ),
                ],
              )),
            )),
        BootstrapCol(
            sizes: 'col-1',
            child: SizedBox(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "x${item.numAll}",
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                ),
              )),
            )),
        BootstrapCol(
            sizes: 'col-2',
            child: SizedBox(
              child: Center(
                  child: Text(
                "฿${formatNum.format(item.totalAll)}",
                style: const TextStyle(fontSize: 13, color: Colors.black),
              )),
            )),
        BootstrapCol(
            sizes: 'col-3',
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Center(
                    child: Text(
                  // "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                  "${item.delisName}\n${item.delisPhone}\n${item.fullAdr}",
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                )),
              ),
            )),
        BootstrapCol(
            sizes: 'col-2',
            child: SizedBox(
              child: Center(
                  child: Column(
                children: [
                  const Text(
                    "รอใบเสนอราคา",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xffef4137),
                        fontFamily: "Prompt-Medium"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      backgroundColor: const Color(0xff2e3192),
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 8, bottom: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    onPressed: () {
                      updateViewOrder(item.odId.toString(), posItem);
                      key.currentState.openEndDrawer();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 8),
                      child: Text(
                        "ดูรายละเอียด",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )),
            ))
      ]),
    ),
  );
}

Widget listcancle1() {
  return Container(
      decoration: BoxDecoration(
          color:
              //const Color.fromARGB(71, 253, 195, 190),
              const Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-2',
              child: const SizedBox(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "000001",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                )),
              )),
          BootstrapCol(
              sizes: 'col-2',
              child: SizedBox(
                child: Center(
                    child: Column(
                  children: const [
                    Text(
                      "30/8/2565",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      "เวลา 19.42 น.",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                )),
              )),
          BootstrapCol(
              sizes: 'col-1',
              child: const SizedBox(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "x1",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                )),
              )),
          BootstrapCol(
              sizes: 'col-2',
              child: const SizedBox(
                child: Center(
                    child: Text(
                  "฿3,900.00",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                )),
              )),
          BootstrapCol(
              sizes: 'col-3',
              child: const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Center(
                      child: Text(
                    "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  )),
                ),
              )),
          BootstrapCol(
              sizes: 'col-2',
              child: SizedBox(
                child: Center(
                    child: Column(
                  children: [
                    const Text(
                      "ยกเลิกสินค้า",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffef4137),
                          fontFamily: "Prompt-Medium"),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        backgroundColor: const Color(0xff2e3192),
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 8, bottom: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        child: Text(
                          "ดูรายละเอียด",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
              ))
        ]),
      ));
}

Widget listcanclemobile(key) {
  double fM;
  double fM1;
  if (Device.width > 991) {
    fM = 16;
    fM1 = 14;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM = 16;
    fM1 = 14;
  } else {
    fM = 15;
    fM1 = 13;
  }
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("000001",
                style: TextStyle(fontSize: fM, fontFamily: "Prompt-Medium"))
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("หมายเลขสั่งซื้อ",
                style: TextStyle(fontSize: fM1, color: Colors.black54))
          ]),
          const SizedBox(height: 10),
          Container(height: 1, color: Colors.black12),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Column(
                  children: const [
                    Text(
                      "30/8/2565",
                      style:
                          TextStyle(fontSize: 13, fontFamily: "Prompt-Medium"),
                    ),
                    Text(
                      "วันที่สั่งซื้อ",
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(width: 1, height: 40, color: Colors.black12),
              Center(
                child: Column(
                  children: const [
                    Text(
                      "12.00",
                      style:
                          TextStyle(fontSize: 13, fontFamily: "Prompt-Medium"),
                    ),
                    Text(
                      "เวลาที่สั่งซื้อ",
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(width: 1, height: 40, color: Colors.black12),
              Center(
                child: Column(
                  children: const [
                    Text(
                      "ยกเลิกสินค้า",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffef4137),
                          fontFamily: "Prompt-Medium"),
                    ),
                    Text(
                      "สถานะ",
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ราคารวม",
                    style: TextStyle(fontSize: 12, color: Color(0xffef4137)),
                  ),
                  Row(
                    children: [
                      const Text(
                        "3,900.00",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Prompt-Medium",
                            color: Color(0xffef4137)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 10),
                        child: Container(
                            width: 1,
                            height: 20,
                            color: const Color(0xffef4137)),
                      ),
                      Row(children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          child: const Icon(
                            FontAwesomeIcons.basketShopping,
                            color: Color(0xffef4137),
                            size: 13,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("4",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xffef4137),
                              fontFamily: "Prompt-Medium",
                            ))
                      ]),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffed3023)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 8, bottom: 8),
                  child: Row(
                    children: const [
                      Text(
                        "ดูรายละเอียด",
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
    ),
  );
}
