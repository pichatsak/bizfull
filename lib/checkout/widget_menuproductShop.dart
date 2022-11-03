// ignore_for_file: file_names

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/cart_view_model.dart';
import 'package:bizfull/models/deli_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var formatNum = NumberFormat('#,###,###.00');
Widget menuproductShop(
    List<CartViewModel> listShop,
    List<DeliViewModel> listDeliShop,
    int chooseDeliShop,
    void Function(String type, String typeDvs) opendChangeDl) {
  double iconsize;
  double namelist;
  double sizepicture;
  double hightfree;
  double hight1;
  double fontsele;
  EdgeInsets rdShow1;
  String vs;
  double padlg;

  if (Device.width > 1240) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    rdShow1 = const EdgeInsets.only(top: 20, left: 20, right: 25);
    vs = "pc";
    padlg = 0;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 93;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    rdShow1 = const EdgeInsets.only(top: 20, left: 20, right: 25);
    vs = "pc";
    padlg = 10;
  } else if (Device.width >= 768 && Device.width <= 991) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    rdShow1 = const EdgeInsets.only(top: 20, left: 20, right: 20);
    vs = "pc";
    padlg = 0;
  } else if (Device.width >= 576 && Device.width <= 767) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    rdShow1 = const EdgeInsets.only(top: 20, left: 20, right: 20);
    vs = "pc";
    padlg = 0;
  } else {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    rdShow1 = const EdgeInsets.only(top: 15, left: 20, right: 20);
    vs = "mobile";
    padlg = 0;
  }
  return Padding(
    padding: rdShow1,
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xfff3f3f3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7))),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        child: Icon(FontAwesomeIcons.store,
                            color: const Color(0xffed3023), size: iconsize),
                      ),
                      const SizedBox(width: 10),
                      Text('สินค้าน่าชอป',
                          style: TextStyle(
                              fontFamily: "Prompt-Bold", fontSize: namelist)),
                      // const SizedBox(width: 10),
                      // Icon(Icons.arrow_forward_ios, size: iconsize)
                    ],
                  ),
                ),
                ...listShop.map(
                  (item) => ListTile(
                    title: BootstrapRow(children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-12 col-lg-2 col-sm-12',
                          child: Row(children: [
                            Center(
                                child: SizedBox(
                                    width: sizepicture,
                                    height: sizepicture,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(7.0),
                                      child: CachedNetworkImage(
                                        width: 25,
                                        imageUrl:
                                            "${Global.hostImgProduct}/${item.pdId}/${item.pdPic}",
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ))),
                          ])),
                      BootstrapCol(
                          sizes: 'col-12 col-lg-10 col-sm-12',
                          child: Padding(
                            padding: EdgeInsets.only(left: padlg),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: hightfree),
                                  Text(
                                      // "หมวกกันน็อครถจักรยานยนต์ helmet motorcycle helmet rally male personality fresh locomotive road safety helmet full helmet",
                                      item.pdName,
                                      style: const TextStyle(fontSize: 13),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis),
                                  SizedBox(height: hight1),
                                  item.cartPdPriceMore == "yes"
                                      ? Row(children: [
                                          Text(item.cartPdNameMore,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black54)),
                                        ])
                                      : const SizedBox(
                                          height: 0,
                                        ),
                                  SizedBox(height: hight1),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "${item.currencySymbol}${formatNum.format(item.cartPrice)}",
                                          style: TextStyle(
                                            fontSize: fontsele,
                                            color: const Color(0xffed3023),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "จำนวน : ",
                                            style: TextStyle(
                                              fontSize: fontsele,
                                            ),
                                          ),
                                          Text(
                                            item.cartNum.toString(),
                                            style: TextStyle(
                                              fontSize: fontsele,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10)
                                ]),
                          ))
                    ]),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(31, 168, 168, 168),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: vs == "pc"
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "ตัวเลือกในการจัดส่ง : ",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    listDeliShop.isNotEmpty
                                        ? Text(
                                            // "฿41.00 (ส่งแบบธรรมดา)",
                                            listDeliShop[chooseDeliShop]
                                                .deliName,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : const Center(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 15,
                                          bottom: 15),
                                      child: Container(
                                        width: 1,
                                        color: Colors.black12,
                                      ),
                                    ),
                                    // const Text(
                                    //   "รับภายใน 31 ส.ค.-2 ก.ย.",
                                    //   style: TextStyle(
                                    //       fontSize: 12, color: Colors.black54),
                                    // ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    opendChangeDl("shop", vs);
                                  },
                                  child: const Text(
                                    "แก้ไข",
                                    style: TextStyle(
                                        fontSize: 13, color: Color(0xffed3023)),
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "ตัวเลือกในการจัดส่ง : ",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    listDeliShop.isNotEmpty
                                        ? Text(
                                            // "฿41.00 (ส่งแบบธรรมดา)",
                                            listDeliShop[chooseDeliShop]
                                                .deliName,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )
                                        : const Center(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // const Text(
                                    //   "รับภายใน 31 ส.ค.-2 ก.ย.",
                                    //   style: TextStyle(
                                    //       fontSize: 12, color: Colors.black54),
                                    // ),
                                    InkWell(
                                      onTap: () {
                                        opendChangeDl("shop", vs);
                                      },
                                      child: const Text(
                                        "แก้ไข",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xffed3023)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                    )),
              ],
            ),
          ))
    ]),
  );
}
