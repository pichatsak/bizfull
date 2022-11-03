import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/cart_view_model.dart';
import 'package:bizfull/shopcart/cont_cart_empty.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter { lafayette, jefferson }

var formatNum = NumberFormat('#,###,###.00');
Widget datashopcart(
    character,
    setState,
    List<CartViewModel> listShip,
    Future<void> Function(int pos) plusNums,
    Future<void> Function(int pos, String cartId) delNumsShip,
    bool isCheckedAllShip,
    void Function(bool val) updateCheckAllShip,
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
              // color: const Color(0xfff3f3f3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    title: Row(
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
                                  child: Icon(FontAwesomeIcons.truck,
                                      color: const Color(0xffed3023),
                                      size: iconsize),
                                ),
                                const SizedBox(width: 10),
                                Text('สินค้าน่าชิป',
                                    style: TextStyle(
                                        fontFamily: "Prompt-Bold",
                                        fontSize: namelist)),
                                const SizedBox(width: 10),
                                Icon(Icons.arrow_forward_ios, size: iconsize)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    leading: listShip.isNotEmpty
                        ? Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isCheckedAllShip,
                            onChanged: (bool? value) {
                              updateCheckAllShip(value!);
                            },
                          )
                        : const Text(""),
                  ),
                  listShip.isNotEmpty
                      ? Column(
                          children: [
                            ...listShip.map(
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
                                            Text(item.pdName,
                                                style: const TextStyle(
                                                    fontSize: 13),
                                                maxLines: 2,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                            SizedBox(height: hight1),
                                            // Row(children: const [
                                            //   Text("No Band,สี:black76*38*38 ",
                                            //       style: TextStyle(
                                            //           fontSize: 12,
                                            //           color: Colors.black54)),
                                            //   Icon(Icons.keyboard_arrow_down, size: 18)
                                            // ]),
                                            SizedBox(height: hight1),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  flex: flexnum,
                                                  child: Text(
                                                    "${item.currencySymbol}${formatNum.format(item.pdPrice)} - ${formatNum.format(item.pdPriceEnd)}",
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
                                                          delNumsShip(
                                                              listShip.indexOf(
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
                                                            enabled: false,
                                                            textAlign: TextAlign
                                                                .center,
                                                            initialValue: '1',
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16),
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
                                            const SizedBox(height: 10),
                                          ])),
                                ]),
                                leading: Checkbox(
                                  checkColor: Colors.white,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value:
                                      listShip[listShip.indexOf(item)].isCheck,
                                  onChanged: (bool? value) {
                                    int index = listShip.indexOf(item);
                                    listShip[index].isCheck = value!;
                                    setState(() {});
                                    setNewTotal();
                                    // updateCheckAll(value!);
                                  },
                                ),
                              ),
                            )
                          ],
                        )
                      : contCartEmpy(),
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
