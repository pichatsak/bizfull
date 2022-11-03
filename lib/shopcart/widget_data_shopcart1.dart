import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/cart_view_model.dart';
import 'package:bizfull/shopcart/cont_cart_empty.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter1 { lafayette, jefferson }

var formatNum = NumberFormat('#,###,###.00');
Widget datashopcart1(
    character1,
    setState,
    List<CartViewModel> listShop,
    Future<void> Function(int pos) plusNums,
    Future<void> Function(int pos, String cartId) delNums,
    bool isCheckedAllShop,
    void Function(bool val) updateCheckAllShop,
    Future<void> Function(int cartId) delCart,
    void Function() setNewTotal) {
  double iconsize;
  double namelist;
  double sizepicture;
  double hightfree;
  double hight1;
  double fontsele;
  int flexnum;
  if (Device.width > 991) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    flexnum = 3;
  } else if (Device.width >= 768 && Device.width <= 991) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 0;
    hight1 = 10;
    fontsele = 15;
    flexnum = 3;
  } else if (Device.width >= 576 && Device.width <= 767) {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    flexnum = 2;
  } else {
    iconsize = 16;
    namelist = 15;
    sizepicture = 95;
    hightfree = 10;
    hight1 = 10;
    fontsele = 15;
    flexnum = 1;
  }

  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: SizedBox(
              width: 800,
              //  color: const Color(0xfff3f3f3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {},
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 2),
                                      child: Icon(FontAwesomeIcons.store,
                                          color: const Color(0xffed3023),
                                          size: iconsize),
                                    ),
                                    const SizedBox(width: 10),
                                    Text('สินค้าน่าช้อป',
                                        style: TextStyle(
                                            fontFamily: "Prompt-Bold",
                                            fontSize: namelist)),
                                    const SizedBox(width: 10),
                                    Icon(Icons.arrow_forward_ios,
                                        size: iconsize)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Text(
                        //   "รับคูปองส่วนลด",
                        //   style: TextStyle(
                        //       fontSize: namelist2, color: Colors.black54),
                        // )
                      ],
                    ),
                    leading: listShop.isNotEmpty
                        ? Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isCheckedAllShop,
                            onChanged: (bool? value) {
                              updateCheckAllShop(value!);
                            },
                          )
                        : const Text(""),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 20, right: 17),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         color: const Color.fromARGB(255, 240, 213, 215),
                  //         borderRadius: BorderRadius.circular(7)),
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           const Text(
                  //             "ซื้อ3ลด฿10 , ซื้อ5ลด฿20",
                  //             style: TextStyle(
                  //                 fontSize: 12.5, color: Color(0xffed3023)),
                  //           ),
                  //           Row(
                  //             children: const [
                  //               Text(
                  //                 "ซื้อเพิ่ม",
                  //                 style: TextStyle(
                  //                     fontSize: 12.5, color: Color(0xffed3023)),
                  //               ),
                  //               SizedBox(
                  //                 width: 5,
                  //               ),
                  //               Icon(
                  //                 Icons.arrow_forward_ios,
                  //                 size: 10,
                  //                 color: Color(0xffed3023),
                  //               )
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 7,
                  ),
                  listShop.isNotEmpty
                      ? Column(
                          children: [
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.0),
                                                  child: CachedNetworkImage(
                                                    width: 25,
                                                    imageUrl:
                                                        "${Global.hostImgProduct}/${item.pdId}/${item.pdPic}",
                                                    errorWidget: (context, url,
                                                            error) =>
                                                        const Icon(Icons.error),
                                                  ),
                                                ))),
                                      ])),
                                  BootstrapCol(
                                      sizes: 'col-12 col-lg-10 col-sm-12',
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: hightfree),
                                            Text(
                                                // "หมวกกันน็อครถจักรยานยนต์ helmet motorcycle helmet rally male personality fresh locomotive road safety helmet full helmet",
                                                item.pdName,
                                                style: const TextStyle(
                                                    fontSize: 13),
                                                maxLines: 2,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                            SizedBox(height: hight1),
                                            item.cartPdPriceMore == "yes"
                                                ? Row(children: [
                                                    Text(item.cartPdNameMore,
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            color: Colors
                                                                .black54)),
                                                  ])
                                                : const SizedBox(
                                                    height: 0,
                                                  ),
                                            SizedBox(height: hight1),
                                            // Container(
                                            //   decoration: BoxDecoration(
                                            //       border:
                                            //           Border.all(color: Colors.black26),
                                            //       borderRadius: BorderRadius.circular(3)),
                                            //   child: const Padding(
                                            //     padding: EdgeInsets.only(
                                            //         left: 4,
                                            //         right: 4,
                                            //         top: 0.5,
                                            //         bottom: 0.5),
                                            //     child: Text("ซื้อ3,ลด ฿10",
                                            //         style: TextStyle(
                                            //             fontSize: 10,
                                            //             color: Color(0xffed3023))),
                                            //   ),
                                            // ),
                                            SizedBox(height: hight1),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  flex: flexnum,
                                                  child: Text(
                                                    "${item.currencySymbol}${formatNum.format(item.cartPrice)}",
                                                    style: TextStyle(
                                                      fontSize: fontsele,
                                                      color: const Color(
                                                          0xffed3023),
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          delCart(item.cartId);
                                                        },
                                                        child: const Icon(
                                                          Icons.delete,
                                                          color:
                                                              Color(0xffed3023),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () {
                                                          delNums(
                                                              listShop.indexOf(
                                                                  item),
                                                              item.cartId
                                                                  .toString());
                                                        },
                                                        child: Container(
                                                          decoration: const BoxDecoration(
                                                              border: Border(
                                                                  left: BorderSide(
                                                                      color: Colors
                                                                          .black26),
                                                                  top: BorderSide(
                                                                      color: Colors
                                                                          .black26),
                                                                  bottom: BorderSide(
                                                                      color: Colors
                                                                          .black26))),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.0),
                                                            child: Icon(
                                                              Icons.remove,
                                                              size: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Theme(
                                                          data: ThemeData(
                                                              primarySwatch:
                                                                  Colors.red,
                                                              fontFamily:
                                                                  "Prompt"),
                                                          child: TextFormField(
                                                            cursorColor:
                                                                Colors.black,
                                                            cursorWidth: 1,
                                                            textAlign: TextAlign
                                                                .center,
                                                            controller:
                                                                TextEditingController(
                                                                    text: item
                                                                        .cartNum
                                                                        .toString()),
                                                            enabled: false,
                                                            style:
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                            decoration:
                                                                const InputDecoration(
                                                              isDense: true,
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          4,
                                                                          12,
                                                                          4,
                                                                          0),
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              0.0))),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () {
                                                          plusNums(item.cartId);
                                                        },
                                                        child: Container(
                                                          decoration: const BoxDecoration(
                                                              border: Border(
                                                                  right: BorderSide(
                                                                      color: Colors
                                                                          .black26),
                                                                  top: BorderSide(
                                                                      color: Colors
                                                                          .black26),
                                                                  bottom: BorderSide(
                                                                      color: Colors
                                                                          .black26))),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.0),
                                                            child: Icon(
                                                              Icons.add_rounded,
                                                              size: 20,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10)
                                          ]))
                                ]),
                                leading: Checkbox(
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value:
                                      listShop[listShop.indexOf(item)].isCheck,
                                  onChanged: (bool? value) {
                                    int index = listShop.indexOf(item);
                                    listShop[index].isCheck = value!;
                                    setState(() {});

                                    setNewTotal();
                                    // updateCheckAll(value!);
                                  },
                                ),
                              ),
                            )
                          ],
                        )
                      : contCartEmpy()
                ],
              ),
            ),
          )),
      BootstrapCol(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 5, right: 15),
          child: Center(
              child: Container(
            width: 765,
            height: 1,
            color: Colors.black12,
          )),
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
