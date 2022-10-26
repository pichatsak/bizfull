import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/pic_more_mobile.dart';
import 'package:bizfull/models/price_more_model.dart';
import 'package:bizfull/models/product_pic_more_model.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/showproduct/widget_dataright.dart';
import 'package:bizfull/showproduct/widget_picture.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget showproduct(context, ProductViewModel pdModel) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: BootstrapContainer(fluid: false, children: [
          BootstrapRow(children: <BootstrapCol>[
            BootstrapCol(
                sizes: 'col-12',
                child: SizedBox(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/");
                          },
                          child: const Text(
                            "หน้าแรก",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffed3023)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "สินค้าทั้งหมด",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xffed3023)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            // "รองเท้า",
                            pdModel.categoryName,
                            style: const TextStyle(
                                fontSize: 13, color: Color(0xffed3023)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          // "รองเท้าสไตล์มินิ",
                          pdModel.pdName,
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ))
          ])
        ]))
  ]);
}

Widget datashowproduct(
    context,
    setState,
    ProductViewModel pdModel,
    TextEditingController numQuan,
    List<ProductPicMoreModel> listpicrMore,
    String picMain,
    void Function(int count, String status)? updateNum,
    void Function(String picSrc) updatePicMainShow,
    String priceMainShow,
    List<PriceMoreModel> listPriceMore,
    int posPriceMoreChoose,
    void Function(int pos) updateChoosePrice,
    List<PicMoreMobile> listPiceMoreMobile) {
  double lP;
  double rP;
  double tP;
  String typ;
  double lmP;
  double rmP;
  if (Device.width > 1240) {
    lP = 0;
    tP = 0;
    rP = 0;
    lmP = 20;
    rmP = 20;
    typ = "pc";
  } else if (Device.width >= 992 && Device.width <= 1240) {
    lP = 0;
    tP = 0;
    rP = 0;
    lmP = 20;
    rmP = 20;
    typ = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    lP = 20;
    tP = 5;
    rP = 20;
    lmP = 0;
    rmP = 0;
    typ = "mobile";
  } else {
    lP = 10;
    tP = 0;
    rP = 10;
    lmP = 0;
    rmP = 0;
    typ = "mobile";
  }
  return BootstrapContainer(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(typ == "pc" ? 7 : 0)),
      fluid: true,
      padding: EdgeInsets.only(top: tP, left: lmP, right: rmP),
      children: <Widget>[
        BootstrapRow(
          children: <BootstrapCol>[
            BootstrapCol(
                sizes: 'col-md-12 col-12 col-lg-6 col-xl-5',
                child: BootstrapContainer(fluid: true, children: <Widget>[
                  picture(pdModel, picMain, listpicrMore, listPiceMoreMobile),
                  smallunderpicture(listpicrMore, updatePicMainShow)
                ])),
            BootstrapCol(
                sizes: 'col-md-12 col-12 col-lg-6 col-xl-7',
                child: BootstrapContainer(fluid: true, children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: lP, right: rP),
                    child: dataright1(
                        context,
                        pdModel,
                        numQuan,
                        updateNum,
                        priceMainShow,
                        listPriceMore,
                        posPriceMoreChoose,
                        updateChoosePrice),
                  ),
                ])),
          ],
        ),
      ]);
}
