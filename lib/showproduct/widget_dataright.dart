import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/price_more_model.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/showproduct/opt_choose.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

Widget dataright1(
    context,
    ProductViewModel pdModel,
    TextEditingController numQuan,
    void Function(int count, String status)? updateNum,
    String priceMainShow,
    List<PriceMoreModel> listPriceMore,
    int posPriceMoreChoose,
    void Function(int pos) updateChoosePrice,
    void Function() addCart,
    void Function() addCartAndGo) {
  // ignore: unused_local_variable
  var formatNum = NumberFormat('#,###,###.00');
  // ignore: unused_local_variable
  var formatNumNoDc = NumberFormat('#,###,###');
  double fontlist;
  double nV;
  double sizestar;
  double hSp;
  double wSp;
  double pad;
  int f;
  String typeDv = "";
  String cTUM;
  double numtop;
  String button;
  double rbut;
  double lbut;
  EdgeInsets pad1 = const EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 0);
  if (Device.width > 1240) {
    fontlist = 18; //xl
    nV = 15;
    sizestar = 14;
    hSp = 20;
    wSp = 5;
    pad = 15;
    pad1 = const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20);
    typeDv = "pc";
    f = 4;
    cTUM = "pc";
    numtop = 20;
    button = "pc";
    rbut = 10;
    lbut = 10;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    fontlist = 18; //lg
    nV = 15;
    sizestar = 14;
    hSp = 20;
    wSp = 5;
    pad = 15;
    pad1 = const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20);
    typeDv = "pc";
    f = 1;
    cTUM = "pc";
    numtop = 20;
    button = "pc";
    rbut = 10;
    lbut = 10;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fontlist = 16; //md
    nV = 15;
    sizestar = 14;
    hSp = 20;
    wSp = 5;
    pad = 15;
    pad1 = const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20);
    typeDv = "pc";
    f = 7;
    cTUM = "mobile";
    numtop = 20;
    button = "mobile";
    rbut = 10;
    lbut = 10;
  } else if (Device.width >= 576 && Device.width <= 767) {
    fontlist = 16; //sm
    nV = 13;
    sizestar = 14;
    hSp = 5;
    wSp = 3;
    pad = 7;
    pad1 = const EdgeInsets.only(top: 15, bottom: 20, left: 0, right: 0);
    typeDv = "mobile";
    f = 7;
    cTUM = "mobile";
    numtop = 20;
    button = "mobile";
    rbut = 10;
    lbut = 10;
  } else {
    fontlist = 16; //xs
    nV = 13;
    sizestar = 14;
    hSp = 5;
    wSp = 3;
    pad = 7;
    pad1 = const EdgeInsets.only(top: 15, bottom: 20, left: 0, right: 0);
    typeDv = "mobile";
    f = 4;
    cTUM = "mobile";
    numtop = 15;
    button = "mobile";
    rbut = 5;
    lbut = 5;
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: numtop),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    // "พร้อมส่งด่วน ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม หนานุ่ม ซับน้ำไว(สีเหลืองเทา) ผ้าเช็ดรถ ผ้าไมโครไฟเบ  ผ้าเช็ดรถ ผ้าเอนกประสงค์ ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม",
                    pdModel.pdName,
                    style: TextStyle(
                        fontSize: fontlist, fontFamily: "Prompt-Medium"),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 0.1,
                          ),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color(0xffed3023),
                            width: 1.0,
                          ))),
                          child: Text(
                            // "5",
                            pdModel.pdStar.toString(),
                            style: TextStyle(
                                color: const Color(0xffed3023), fontSize: nV),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ...List.generate(5, (index) {
                          return index < pdModel.pdStar
                              ? Icon(Icons.star,
                                  size: sizestar,
                                  color: const Color(0xffed3023))
                              : Icon(
                                  Icons.star,
                                  size: sizestar,
                                  color: const Color(0xff777777),
                                );
                        }),
                        // Icon(Icons.star,
                        //     size: sizestar, color: const Color(0xffed3023)),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 1, right: 1),
                        //   child: Icon(Icons.star,
                        //       size: sizestar, color: const Color(0xffed3023)),
                        // ),
                        // Icon(Icons.star,
                        //     size: sizestar, color: const Color(0xffed3023)),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 1, right: 1),
                        //   child: Icon(Icons.star,
                        //       size: sizestar, color: const Color(0xffed3023)),
                        // ),
                        // Icon(
                        //   Icons.star,
                        //   size: sizestar,
                        //   color: const Color(0xff777777),
                        // )
                      ],
                    ),
                    SizedBox(
                      width: hSp,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(
                          width: 0.7,
                          color: Colors.black26,
                        ),
                        left: BorderSide(
                          width: 0.7,
                          color: Colors.black26,
                        ),
                      )),
                      child: Padding(
                        padding: EdgeInsets.only(left: pad, right: pad),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                bottom: 0.1,
                              ),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                width: 1.0,
                              ))),
                              child: Text(
                                // "6.5พัน",
                                formatNumNoDc.format(pdModel.pdPoint),
                                style: TextStyle(fontSize: nV),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Ratings",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: nV),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: hSp,
                    ),
                    Text(
                      formatNumNoDc.format(pdModel.pdSelled),
                      style: TextStyle(color: Colors.black, fontSize: nV),
                    ),
                    SizedBox(
                      width: wSp,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          child: const Text(
                            "ขายแล้ว",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: wSp,
                        ),
                        const Icon(
                          Icons.help_outline_outlined,
                          color: Colors.black45,
                          size: 15,
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: pad1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          // Row(
                          //   children: const [
                          //     Text(
                          //       "฿5,400",
                          //       style: TextStyle(
                          //           fontSize: 13,
                          //           color: Colors.black54,
                          //           decoration: TextDecoration.lineThrough),
                          //     ),
                          //     SizedBox(
                          //       width: 5,
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(
                          //   width: 5,
                          // ),
                          Row(
                            children: [
                              pdModel.pdType == "shop"
                                  ? Text(
                                      priceMainShow,
                                      style: const TextStyle(
                                        fontSize: 23,
                                        color: Color(0xffed3023),
                                      ),
                                    )
                                  : Text(
                                      priceMainShow,
                                      style: const TextStyle(
                                        fontSize: 23,
                                        color: Color(0xffed3023),
                                      ),
                                    ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: const Color(0xffed3023),
                          //       borderRadius: BorderRadius.circular(3)),
                          //   child: const Padding(
                          //     padding: EdgeInsets.only(
                          //         left: 3, right: 3, top: 1, bottom: 1),
                          //     child: Text(
                          //       "26% ส่วนลด",
                          //       style: TextStyle(
                          //           fontSize: 10, color: Colors.white),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      // cTUM == "pc"
                      //     ? const SizedBox(
                      //         height: 30,
                      //       )
                      //     : const SizedBox(
                      //         height: 20,
                      //       ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 110,
                      //       child: Text(
                      //         "โค้ดส่วนลดจากร้านค้า",
                      //         style: TextStyle(
                      //             color: Colors.black87, fontSize: 12),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Container(
                      //       decoration: BoxDecoration(
                      //           color: const Color.fromARGB(255, 240, 213, 215),
                      //           borderRadius: BorderRadius.circular(3)),
                      //       child: const Padding(
                      //         padding: EdgeInsets.only(
                      //             left: 4, right: 4, top: 1, bottom: 1),
                      //         child: Text(
                      //           "ลด ฿100",
                      //           style: TextStyle(
                      //               fontSize: 12, color: Color(0xffed3023)),
                      //         ),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Container(
                      //       decoration: BoxDecoration(
                      //           color: const Color.fromARGB(255, 240, 213, 215),
                      //           borderRadius: BorderRadius.circular(3)),
                      //       child: const Padding(
                      //         padding: EdgeInsets.only(
                      //             left: 4, right: 4, top: 1, bottom: 1),
                      //         child: Text(
                      //           "ลด ฿150",
                      //           style: TextStyle(
                      //               fontSize: 12, color: Color(0xffed3023)),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      // cTUM == "pc"
                      //     ? const SizedBox(
                      //         height: 20,
                      //       )
                      //     : const SizedBox(
                      //         height: 15,
                      //       ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 110,
                      //       child: Text(
                      //         "ช้อปเพิ่มคุ้มกว่า",
                      //         style: TextStyle(
                      //             color: Colors.black87, fontSize: 12),
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Container(
                      //       decoration: BoxDecoration(
                      //           color: const Color.fromARGB(255, 240, 213, 215),
                      //           borderRadius: BorderRadius.circular(3)),
                      //       child: const Padding(
                      //         padding: EdgeInsets.only(
                      //             left: 4, right: 4, top: 1, bottom: 1),
                      //         child: Text(
                      //           "รับสินค้าฟรี",
                      //           style: TextStyle(
                      //               fontSize: 12, color: Color(0xffed3023)),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      cTUM == "pc"
                          ? const SizedBox(
                              height: 20,
                            )
                          : const SizedBox(
                              height: 15,
                            ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 110,
                      //       child: Text(
                      //         "การจัดส่ง",
                      //         style: TextStyle(
                      //             color: Colors.black87, fontSize: 12),
                      //         textAlign: TextAlign.start,
                      //       ),
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Row(
                      //       children: [
                      //         SvgPicture.asset(
                      //           "images/car.svg",
                      //           color: Colors.black45,
                      //           width: 20,
                      //         ),
                      //         const SizedBox(
                      //           width: 5,
                      //         ),
                      //         const SizedBox(
                      //           width: 110,
                      //           child: Text(
                      //             "การจัดส่ง ถึง",
                      //             style: TextStyle(
                      //                 color: Colors.black87, fontSize: 12),
                      //           ),
                      //         ),
                      //         Row(
                      //           children: const [
                      //             Text(
                      //               "อำเภอธัญบุรี,จังหวัดปทุมธานี",
                      //               style: TextStyle(
                      //                   color: Colors.black, fontSize: 12),
                      //             ),
                      //             Icon(
                      //               Icons.keyboard_arrow_down_outlined,
                      //               color: Colors.black54,
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     const SizedBox(
                      //       width: 135,
                      //     ),
                      //     const SizedBox(
                      //       width: 15,
                      //     ),
                      //     Row(
                      //       children: [
                      //         const SizedBox(
                      //           width: 110,
                      //           child: Text(
                      //             "ค่าจัดส่ง",
                      //             style: TextStyle(
                      //                 color: Colors.black87, fontSize: 12),
                      //           ),
                      //         ),
                      //         Row(
                      //           children: const [
                      //             Text(
                      //               "฿45",
                      //               style: TextStyle(
                      //                   color: Colors.black, fontSize: 12),
                      //             ),
                      //             Icon(
                      //               Icons.keyboard_arrow_down_outlined,
                      //               color: Colors.black54,
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ],
                      // ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      typeDv == "pc"
                          ? pdModel.pdType == "shop"
                              ? pdModel.pdTypePrice == "many"
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 110,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "ตัวเลือก",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    186, 0, 0, 0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        optChoose(
                                            listPriceMore,
                                            posPriceMoreChoose,
                                            updateChoosePrice)
                                      ],
                                    )
                                  : const Center()
                              : const Center()
                          : pdModel.pdType == "shop"
                              ? Column(
                                  children: [
                                    Row(
                                      children: const [
                                        SizedBox(
                                          width: 110,
                                          child: Text(
                                            "ตัวเลือก",
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(186, 0, 0, 0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: optChoose2(
                                                listPriceMore,
                                                posPriceMoreChoose,
                                                updateChoosePrice),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              : const SizedBox(
                                  height: 10,
                                ),

                      const SizedBox(
                        height: 20,
                      ),
                      if (typeDv == "pc")
                        Row(
                          children: [
                            const SizedBox(
                              width: 110,
                              child: Text(
                                "จำนวน",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 12),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      int getCurNum = int.parse(numQuan.text);
                                      if (getCurNum != 1) {
                                        getCurNum--;
                                        updateNum!(getCurNum, "del");
                                      }
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                  color: Colors.black26),
                                              top: BorderSide(
                                                  color: Colors.black26),
                                              bottom: BorderSide(
                                                  color: Colors.black26))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(3.0),
                                        child: Icon(
                                          Icons.remove,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Theme(
                                      data: ThemeData(
                                          primarySwatch: Colors.red,
                                          fontFamily: "Prompt"),
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        cursorWidth: 1,
                                        textAlign: TextAlign.center,
                                        keyboardType: TextInputType.number,
                                        controller: numQuan,
                                        style: const TextStyle(
                                            color: Colors.black),
                                        decoration: const InputDecoration(
                                          isDense: true,
                                          contentPadding:
                                              EdgeInsets.fromLTRB(4, 12, 4, 0),
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(0.0))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: f,
                                    child: InkWell(
                                      onTap: () {
                                        int getCurNum = int.parse(numQuan.text);
                                        getCurNum++;
                                        updateNum!(getCurNum, "plus");
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            border: Border(
                                                right: BorderSide(
                                                    color: Colors.black26),
                                                top: BorderSide(
                                                    color: Colors.black26),
                                                bottom: BorderSide(
                                                    color: Colors.black26))),
                                        child: const Padding(
                                          padding: EdgeInsets.all(3.0),
                                          child: Icon(
                                            Icons.add_rounded,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  // const Text(
                                  //   "มีสินค้าทั้งหมด 2835 ชิ้น",
                                  //   style: TextStyle(
                                  //       color: Colors.black87, fontSize: 12),
                                  //   textAlign: TextAlign.start,
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        )
                      else
                        Column(
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                  child: Text(
                                    "จำนวน",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 12),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Flexible(
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          int getCurNum =
                                              int.parse(numQuan.text);
                                          if (getCurNum != 1) {
                                            getCurNum--;
                                            updateNum!(getCurNum, "del");
                                          }
                                        },
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Colors.black26),
                                                  top: BorderSide(
                                                      color: Colors.black26),
                                                  bottom: BorderSide(
                                                      color: Colors.black26))),
                                          child: const Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: Icon(
                                              Icons.remove,
                                              size: 20,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Theme(
                                          data: ThemeData(
                                              primarySwatch: Colors.red,
                                              fontFamily: "Prompt"),
                                          child: TextFormField(
                                            cursorColor: Colors.black,
                                            cursorWidth: 1,
                                            textAlign: TextAlign.center,
                                            keyboardType: TextInputType.number,
                                            controller: numQuan,
                                            style: const TextStyle(
                                                color: Colors.black),
                                            decoration: const InputDecoration(
                                              isDense: true,
                                              contentPadding:
                                                  EdgeInsets.fromLTRB(
                                                      4, 12, 4, 0),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              0.0))),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: f,
                                        child: InkWell(
                                          onTap: () {
                                            int getCurNum =
                                                int.parse(numQuan.text);
                                            getCurNum++;
                                            updateNum!(getCurNum, "plus");
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                border: Border(
                                                    right: BorderSide(
                                                        color: Colors.black26),
                                                    top: BorderSide(
                                                        color: Colors.black26),
                                                    bottom: BorderSide(
                                                        color:
                                                            Colors.black26))),
                                            child: const Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.add_rounded,
                                                size: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 10),
                            //   child: Row(
                            //     children: const [
                            //       SizedBox(
                            //         width: 55,
                            //       ),
                            //       Text(
                            //         "มีสินค้าทั้งหมด 10 ชิ้น",
                            //         style: TextStyle(
                            //             color: Colors.black87, fontSize: 12),
                            //         textAlign: TextAlign.start,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      const SizedBox(
                        height: 30,
                      ),
                      //ปุ่ม //เฉพาะ xs โทรศัพท์
                      button == "mobile"
                          ? Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: rbut),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size.zero,
                                        backgroundColor: Colors.orange,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                      ),
                                      onPressed: () {
                                        // Navigator.of(context)
                                        //     .pushNamed("/shopcart");
                                        addCart();
                                      },
                                      child: SizedBox(
                                        height: 45,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 3),
                                                child: const Icon(
                                                  FontAwesomeIcons.bagShopping,
                                                  size: 16,
                                                  color: Colors.white,
                                                )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              "เพิ่มไปยังรถเข็น",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: lbut),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size.zero,
                                        backgroundColor:
                                            const Color(0xffed3023),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                      ),
                                      onPressed: () {
                                        if (pdModel.pdType == "ship") {
                                          openLinkShip(pdModel.productLink);
                                        } else {
                                          addCartAndGo();
                                        }
                                      },
                                      child: SizedBox(
                                        height: 45,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                margin: const EdgeInsets.only(
                                                    bottom: 3),
                                                child: const Icon(
                                                  FontAwesomeIcons.bagShopping,
                                                  size: 16,
                                                  color: Colors.white,
                                                )),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            pdModel.pdType == "shop"
                                                ? const Text(
                                                    "ซื้อสินค้า",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                : const Text(
                                                    "ไปยังลิงก์สินค้า",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5, right: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: cTUM == "pc"
                                            ? const Color.fromARGB(
                                                255, 240, 213, 215)
                                            : Colors.orange,
                                        borderRadius: BorderRadius.circular(7),
                                        border: cTUM == "pc"
                                            ? Border.all(
                                                color: const Color(0xffed3023))
                                            : null),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: const Color.fromARGB(
                                            255, 253, 201, 204),
                                        hoverColor: const Color.fromARGB(
                                            255, 247, 219, 217),
                                        highlightColor: Colors.white12,
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {
                                          // Navigator.of(context)
                                          //     .pushNamed("/shopcart");
                                          addCart();
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25,
                                              right: 25,
                                              top: 12,
                                              bottom: 12),
                                          child: Row(
                                            children: [
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      bottom: 3),
                                                  child: Icon(
                                                    FontAwesomeIcons
                                                        .bagShopping,
                                                    size: 16,
                                                    color: cTUM == "pc"
                                                        ? const Color(
                                                            0xffed3023)
                                                        : Colors.white,
                                                  )),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "เพิ่มไปยังรถเข็น",
                                                style: TextStyle(
                                                    color: cTUM == "pc"
                                                        ? const Color(
                                                            0xffed3023)
                                                        : Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color(0xffed3023),
                                      ),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                      ))),
                                  onPressed: () {
                                    if (pdModel.pdType == "ship") {
                                      openLinkShip(pdModel.productLink);
                                    } else {
                                      addCartAndGo();
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12,
                                        right: 12,
                                        top: 13,
                                        bottom: 13),
                                    child: Row(
                                      children: [
                                        pdModel.pdType == "shop"
                                            ? const Text(
                                                "ซื้อสินค้า",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )
                                            : const Text(
                                                "ไปยังลิงก์สินค้า",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
  ]);
}

void openLinkShip(String productLink) {
  js.context.callMethod('open', [productLink]);
}
