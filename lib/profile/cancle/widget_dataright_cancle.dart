import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/order_view_model.dart';
import 'package:bizfull/profile/cancle/widget_list_cancle.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget datarightcancle(
    context,
    key,
    setState,
    verticalList,
    scrollController,
    List<OrderViewModel> listColums,
    void Function(String value, int pos) updateViewOrder) {
  double pAD;
  double fM;
  double fM1;
  String table;
  double hB;
  double bB;
  double hB1;
  double pad1;
  double pad2;
  String nB;
  double h1;
  if (Device.width > 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
    table = "pc";
    hB = 50;
    bB = 20;
    hB1 = 30;
    pad1 = 30;
    pad2 = 10; //20
    nB = "pc";
    h1 = 15;
  } else if (Device.width >= 768 && Device.width <= 991) {
    pAD = 0;
    fM = 16;
    fM1 = 14;
    table = "mobile";
    hB = 50;
    bB = 20;
    hB1 = 0;
    pad1 = 20;
    pad2 = 10;
    nB = "mobile";
    h1 = 0;
  } else {
    pAD = 10;
    fM = 15;
    fM1 = 13;
    table = "mobile";
    hB = 30;
    bB = 0;
    hB1 = 0;
    pad1 = 10;
    pad2 = 10;
    nB = "mobile";
    h1 = 0;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: Padding(
          padding: EdgeInsets.only(left: pAD, right: pAD),
          child: Container(
            decoration: BoxDecoration(
                //    color: nB == "pc" ? const Color(0xfff3f3f3) : null,
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: pad1, top: pad2, bottom: pad2, right: pad1),
              child: Column(
                children: [
                  nB == "pc"
                      ? Row(children: [
                          Text("รอใบเสนอราคา",
                              style: TextStyle(
                                  fontSize: fM, fontFamily: "Prompt-Medium"))
                        ])
                      : Container(),
                  nB == "pc"
                      ? Row(children: [
                          Text("แสดงรายการคำสั่งซื้อที่รอใบเสนอราคา",
                              style: TextStyle(
                                  fontSize: fM1, color: Colors.black87))
                        ])
                      : Container(),
                  SizedBox(height: h1),
                  nB == "pc"
                      ? Container(height: 1, color: Colors.black12)
                      : Container(),
                  SizedBox(height: hB1),
                  table == "pc"
                      ? Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffed3023),
                                  borderRadius: BorderRadius.circular(7)),
                              child: BootstrapRow(children: <BootstrapCol>[
                                BootstrapCol(
                                    sizes: 'col-2',
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "หมายเลขสั่งซื้อ",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )),
                                    )),
                                BootstrapCol(
                                    sizes: 'col-2',
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "เมื่อ",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )),
                                    )),
                                BootstrapCol(
                                    sizes: 'col-1',
                                    child: SizedBox(
                                      height: 50,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "รายการ",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "(ทั้งหมด)",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )),
                                BootstrapCol(
                                    sizes: 'col-2',
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "ยอดรวม\nโดยประมาณ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )),
                                    )),
                                BootstrapCol(
                                    sizes: 'col-3',
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "ที่อยู่จัดส่ง",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )),
                                    )),
                                BootstrapCol(
                                    sizes: 'col-2',
                                    child: const SizedBox(
                                      height: 50,
                                      child: Center(
                                          child: Text(
                                        "สถานะสั่งซื้อ",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      )),
                                    ))
                              ]),
                            ),
                            listColums.isNotEmpty
                                ? Column(
                                    children: [
                                      ...listColums
                                          .map((item) => listcancle(
                                              context,
                                              key,
                                              item,
                                              updateViewOrder,
                                              listColums.indexOf(item)))
                                          .toList()
                                    ],
                                  )
                                : const Center()
                          ],
                        )
                      : Column(
                          children: [
                            listcanclemobile(key),
                            const SizedBox(height: 10),
                            listcanclemobile(key),
                          ],
                        ),
                  const SizedBox(
                    height: 250,
                  )
                  // nB == "pc"
                  //     ? Container(
                  //         margin: EdgeInsets.fromLTRB(0, hB, 0, bB),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Pagecancle(
                  //               currentPage: 1,
                  //               totalPages: 2,
                  //               onPageChanged: (page) {},
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     : Container(),
                ],
              ),
            ),
          ),
        )),
  ]);
}
