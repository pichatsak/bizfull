// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:bizfull/global.dart';
import 'package:bizfull/models/deli_view_model.dart';
import 'package:bizfull/models/order_detail_view_model.dart';
import 'package:bizfull/models/order_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

var formatNum = NumberFormat('#,###,###.00');
NumberFormat formatterCode = NumberFormat("00000");

class NavDrawerWaitOffer extends StatefulWidget {
  final String odIdChoose;
  const NavDrawerWaitOffer({Key? key, required this.odIdChoose})
      : super(key: key);

  @override
  State<NavDrawerWaitOffer> createState() => _NavDrawerWaitOfferState();
}

class _NavDrawerWaitOfferState extends State<NavDrawerWaitOffer> {
  final padding = const EdgeInsets.symmetric(horizontal: 0);
  String idCurGet = "";
  bool isLoad = false;
  bool isLoadDetail = false;
  bool isLoadDeli = false;
  late OrderViewModel orderData;
  List<OrderDetailViewModel> listOdtShip = [];
  List<OrderDetailViewModel> listOdtShop = [];
  late DeliViewModel deliShop;
  late DeliViewModel deliShip;
  @override
  void initState() {
    super.initState();
    idCurGet = widget.odIdChoose;
    if (idCurGet != "") {
      getShowOrder();
    }
  }

  Future<void> getShowOrder() async {
    var url = "${Global.hostName}/order_get_id.php?id=$idCurGet";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        orderData = OrderViewModel.fromJson(data);
      }).toList();
      setState(() {
        isLoad = true;
        getShowOrderDetail();
        getTypeDeliShow();
      });
    }
  }

  Future<void> getTypeDeliShow() async {
    var url = "${Global.hostName}/order_get_deli.php?id=$idCurGet";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      deliShop = DeliViewModel.fromJson(getData['shop_deli']);
      deliShip = DeliViewModel.fromJson(getData['ship_deli']);
      setState(() {
        isLoadDeli = true;
      });
    }
  }

  Future<void> getShowOrderDetail() async {
    listOdtShip = [];
    listOdtShop = [];
    var url = "${Global.hostName}/order_get_detail.php?id=$idCurGet";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        OrderDetailViewModel orderDataDt = OrderDetailViewModel.fromJson(data);
        if (orderDataDt.odtType == "ship") {
          listOdtShip.add(orderDataDt);
        } else {
          listOdtShop.add(orderDataDt);
        }
      }).toList();
      setState(() {
        isLoadDetail = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0),
          topLeft: Radius.circular(0),
          // topRight: Radius.circular(10),
          // bottomRight: Radius.circular(10),
        ),
        child: Drawer(
          child: Material(
            //   color: const Color(0xfffafafa),

            child: ListView(
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.only(top: 30),
                //   child: Container(
                //       child: Image.asset(
                //     "images/logo1.png",
                //     width: 80,
                //     height: 60,
                //   )),
                // ),
                Container(
                  padding: padding,
                  child: Column(
                    children: [
                      Card(
                        // shape: const RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        // ),
                        margin:
                            const EdgeInsets.only(left: 0, right: 0, top: 0),
                        elevation: 4,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/b_nav.png"),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                const SizedBox(height: 12),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("รายละเอียดสินค้า",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "Prompt-Medium",
                                              color: Colors.white))
                                    ]),
                                idCurGet != ""
                                    ? Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Column(
                                              children: [
                                                Row(children: [
                                                  const Text(
                                                      "หมายเลขสั่งซื้อ : ",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                      )),
                                                  Text(
                                                      "#${formatterCode.format(orderData.odId)}",
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          //  color: Color.fromARGB(165, 0, 0, 0)
                                                          color: Color.fromARGB(
                                                              165, 0, 0, 0)))
                                                ]),
                                                Row(children: [
                                                  const Text("เมื่อ : ",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                      )),
                                                  Text(
                                                      // "30/8/2565 เวลา 19.42 น.",
                                                      "${orderData.odCreate}",
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Color.fromARGB(
                                                              165, 0, 0, 0)))
                                                ]),
                                                Row(children: [
                                                  const Text("ทั้งหมด : ",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                      )),
                                                  Text(
                                                      "${orderData.numAll} รายการ",
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Color.fromARGB(
                                                              165, 0, 0, 0)))
                                                ]),
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                          "ที่อยู่จัดส่ง : ",
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Colors.black,
                                                          )),
                                                      Flexible(
                                                        child: Text(
                                                            orderData.fullAdr,
                                                            style: const TextStyle(
                                                                fontSize: 13,
                                                                color: Color
                                                                    .fromARGB(
                                                                        165,
                                                                        0,
                                                                        0,
                                                                        0))),
                                                      )
                                                    ]),
                                                Row(children: [
                                                  const Text("ยอดรวม : ",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.black,
                                                      )),
                                                  Text(
                                                      "฿${formatNum.format(orderData.totalAll)}",
                                                      style: const TextStyle(
                                                          fontSize: 13,
                                                          color: Color(
                                                              0xffed3023)))
                                                ]),
                                                const SizedBox(height: 0),
                                                // Row(
                                                //   children: const [
                                                //     Text("สถานะสั่งซื้อ : ",
                                                //         style: TextStyle(
                                                //           fontSize: 13,
                                                //           color: Colors.black,
                                                //         )),
                                                //     Text(
                                                //       "รอใบเสนอราคา",
                                                //       style: TextStyle(
                                                //           fontSize: 13,
                                                //           color: Color.fromARGB(
                                                //               255,
                                                //               214,
                                                //               145,
                                                //               40),
                                                //           // color: Colors.black,
                                                //           fontFamily:
                                                //               "Prompt-Medium"),
                                                //     ),
                                                //   ],
                                                // ),
                                                const SizedBox(height: 20),
                                                // Row(
                                                //   mainAxisAlignment:
                                                //       MainAxisAlignment.center,
                                                //   children: [
                                                //     ElevatedButton(
                                                //       style: ElevatedButton
                                                //           .styleFrom(
                                                //         minimumSize: Size.zero,
                                                //         backgroundColor:
                                                //             const Color(
                                                //                 0xff2e3192),
                                                //         padding:
                                                //             const EdgeInsets
                                                //                     .only(
                                                //                 left: 0,
                                                //                 right: 0,
                                                //                 top: 8,
                                                //                 bottom: 8),
                                                //         shape:
                                                //             RoundedRectangleBorder(
                                                //                 borderRadius:
                                                //                     BorderRadius
                                                //                         .circular(
                                                //                             7)),
                                                //       ),
                                                //       onPressed: () {
                                                //         Navigator.pop(context);
                                                //         Navigator.of(context)
                                                //             .pushNamed(
                                                //                 "/delively");
                                                //       },
                                                //       child: const Padding(
                                                //         padding:
                                                //             EdgeInsets.only(
                                                //                 left: 10,
                                                //                 right: 10,
                                                //                 top: 8,
                                                //                 bottom: 8),
                                                //         child: Text(
                                                //           "รายละเอียดการจัดส่ง",
                                                //           style: TextStyle(
                                                //               fontSize: 13,
                                                //               color:
                                                //                   Colors.white),
                                                //         ),
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : const Center(),

                                const SizedBox(height: 15),
                                //     Container(height: 1, color: Colors.black12),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            listOdtShip.isNotEmpty
                                ? menuShowRightWaitOffer(listOdtShip, "ship")
                                : const SizedBox(
                                    height: 0,
                                  ),
                            listOdtShop.isNotEmpty
                                ? menuShowRightWaitOffer(listOdtShop, "shop")
                                : const SizedBox(
                                    height: 0,
                                  ),
                            // ...listOdtShip
                            //     .map((itemDt) => menuShowRightWaitOffer(itemDt))
                            //     .toList(),
                            // ...listOdtShop
                            //     .map((itemDt) => menuShowRightWaitOffer(itemDt))listOdtShip
                            //     .toList(),
                            const SizedBox(height: 15),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuShowRightWaitOffer(
      List<OrderDetailViewModel> listOdt, String typeShow) {
    double iconsize;
    double namelist;
    double sizepicture;
    double hightfree;
    double hight1;

    if (Device.width > 1240) {
      iconsize = 16;
      namelist = 15;
      sizepicture = 95;
      hightfree = 0;
      hight1 = 10;
    } else if (Device.width >= 992 && Device.width <= 1240) {
      iconsize = 16;
      namelist = 15;
      sizepicture = 95;
      hightfree = 0;
      hight1 = 10;
    } else if (Device.width >= 768 && Device.width <= 991) {
      iconsize = 16;
      namelist = 15;
      sizepicture = 95;
      hightfree = 0;
      hight1 = 10;
    } else if (Device.width >= 576 && Device.width <= 767) {
      iconsize = 16;
      namelist = 15;
      sizepicture = 95;
      hightfree = 10;
      hight1 = 10;
    } else {
      iconsize = 16;
      namelist = 15;
      sizepicture = 95;
      hightfree = 10;
      hight1 = 10;
    }
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 0, right: 0), //rdShow1
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
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Icon(
                      typeShow == "ship"
                          ? FontAwesomeIcons.truck
                          : FontAwesomeIcons.store,
                      color: const Color(0xffed3023),
                      size: iconsize),
                ),
                const SizedBox(width: 10),
                Text(typeShow == "ship" ? 'สินค้าน่าชิป' : 'สินค้าน่าช้อป',
                    style: TextStyle(
                        fontFamily: "Prompt-Bold", fontSize: namelist)),
              ],
            ),
            const SizedBox(height: 10),
            ...listOdt.map((itemDt) => Column(
                  children: [
                    listOdt.indexOf(itemDt) > 0
                        ? Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 10),
                            child: Container(
                              color: Colors.white,
                              height: 1,
                            ),
                          )
                        : const SizedBox(
                            height: 0,
                          ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Center(
                          child: SizedBox(
                              width: sizepicture,
                              height: sizepicture,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high,
                                  imageUrl:
                                      "${Global.hostImgProduct}/${itemDt.pdId}/${itemDt.pdPic}",
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ))),
                    ]),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: hightfree),
                            Text(itemDt.pdName,
                                style: const TextStyle(fontSize: 13),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                            SizedBox(height: hight1),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    typeShow == "shop"
                                        ? "฿${formatNum.format(itemDt.odtTotal)}"
                                        : formatNum.format(
                                            (itemDt.odtNum * itemDt.odtPrice) *
                                                itemDt.odtRate),
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffed3023),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      "จำนวน : ",
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      itemDt.odtNum.toString(),
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10)
                          ]),
                    ),
                  ],
                )),
            Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(31, 168, 168, 168),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(7),
                        bottomRight: Radius.circular(7))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isLoadDeli
                          ? Row(
                              children: [
                                typeShow == "ship"
                                    ? Text(
                                        deliShip.deliName,
                                        style: const TextStyle(fontSize: 12),
                                      )
                                    : Text(
                                        deliShop.deliName,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                              ],
                            )
                          : const SizedBox(
                              height: 0,
                            ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      // InkWell(
      //   onTap: onClicked,
      //   child:
      Container(
        padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            // CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
            // SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            // Spacer(),
            // CircleAvatar(
            //   radius: 24,
            //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
            //   child: Icon(Icons.add_comment_outlined, color: Colors.white),
            // )
          ],
        ),
      );
  // );

  Widget buildSearchField() {
    const color = Colors.black;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.black12;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color, fontSize: 16)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      // case 0:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => Homepage(),
      //   ));
      //   break;
    }
  }
}
