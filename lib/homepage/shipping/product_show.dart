import 'package:bizfull/global.dart';
import 'package:bizfull/models/cate_model.dart';
import 'package:bizfull/models/product_model.dart';
import 'package:bizfull/other/hover.dart';
import 'package:bizfull/other/hoverm.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget productShowIndex(b, T, R, L, hSp2, fSd, hSp3, fSm, context,
    ProductModel itemPd, String currencySymbol) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, "/products?id=${itemPd.pdId}");
    },
    focusColor: color,
    hoverColor: color,
    highlightColor: color,
    child: OnHover(
        builder: ((isHovered) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: isHovered ? const Color(0xffef4137) : Colors.white,
                    width: 1.3,
                  ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: isHovered ? 5 : 0,
                        color: isHovered
                            ? const Color.fromARGB(31, 192, 192, 192)
                                .withOpacity(.3)
                            : Colors.white.withOpacity(0),
                        offset: const Offset(-1, 2))
                  ]),
              child: Padding(
                padding: EdgeInsets.only(top: T, right: R, left: L),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: b,
                        width: b,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "${Global.hostImgProduct}/${itemPd.pdId}/${itemPd.pdPic}"),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: hSp2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: Text(
                        // "?????????????????????????????? ??????????????????????????????????????????????????? ????????????????????????????????? ?????????????????????????????? 4 ????????? 3 ???????????????????????????????????? ????????????????????? ????????????????????????",
                        itemPd.pdName,
                        style: TextStyle(fontSize: fSd, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                      ),
                    ),
                    SizedBox(
                      height: hSp3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: itemPd.pdType == "shop"
                            ? Text(
                                "$currencySymbol${itemPd.pdPrice}",
                                style: TextStyle(
                                  fontSize: fSm,
                                  color: const Color(0xffee602e),
                                ),
                              )
                            : Text(
                                "$currencySymbol${itemPd.pdPrice}-$currencySymbol${itemPd.pdPriceEnd}",
                                style: TextStyle(
                                  fontSize: fSm,
                                  color: const Color(0xffee602e),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ))),
  );
}

var color = Colors.transparent;
Widget catePdShow(d, hM, hM1, fM, int index, context, CategoryModel itemCate) {
  String typeSc;
  if (Device.width > 991) {
    typeSc = "profile";
  } else {
    typeSc = "profile_mobile";
  }
  return InkWell(
    onTap: () {
      Navigator.of(context).pushNamed("/$typeSc");
    },
    focusColor: color,
    hoverColor: color,
    highlightColor: color,
    child: OnHover1(
        builder: ((isHovered) => Container(
              height: 213,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: index == 0
                      ? const Border(
                          right: BorderSide(
                            width: 0.7,
                            color: Colors.black26,
                          ),
                        )
                      : const Border(
                          right: BorderSide(
                            width: 0.7,
                            color: Colors.black26,
                          ),
                        ),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0,
                        blurRadius: isHovered ? 4 : 0,
                        color: isHovered
                            ? const Color(0xFF000000).withOpacity(.2)
                            : Colors.white.withOpacity(0),
                        offset: const Offset(-1, 2))
                  ]),
              child: Column(
                children: [
                  Container(
                    height: hM,
                  ),
                  Center(
                    child: Container(
                      width: d,
                      height: d,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(
                            "${Global.hostImgCate}/${itemCate.categoryPic}"),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Container(
                    height: hM1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      // "????????????????????????????????????",
                      itemCate.categoryName,
                      style: TextStyle(fontSize: fM, color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ))),
  );
}
