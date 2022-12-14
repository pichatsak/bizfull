import 'package:bizfull/global.dart';
import 'package:bizfull/homepage/shipping/widget_show_product_shipping.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/other/hover.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

Widget menu(
  b,
  T,
  R,
  L,
  hSp2,
  fSd,
  hSp3,
  fSm,
  ProductViewModel itemPd,
) {
  return InkWell(
    onTap: () {},
    focusColor: color,
    hoverColor: color,
    highlightColor: color,
    child: OnHover(
        builder: ((isHovered) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
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
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            height: b,
                            //  width: b,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "${Global.hostImgProduct}/${itemPd.pdId}/${itemPd.pdPic}"),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                )),
                          ),
                          //     SizedBox(
                          //   width: double.infinity,
                          //   height: b,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(5.0),
                          //     child: Image.asset(
                          //       "images/menutest.jpg",
                          //       fit: BoxFit.contain,
                          //     ),
                          //   ),
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 10),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CachedNetworkImage(
                              width: 25,
                              imageUrl:
                                  "${Global.hostImgGroupSubPd}/${itemPd.groupIcon}",
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                      ],
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
                                "${itemPd.currencySymbol}${itemPd.pdPrice}",
                                style: TextStyle(
                                  fontSize: fSm,
                                  color: const Color(0xffee602e),
                                ),
                              )
                            : Text(
                                "${itemPd.currencySymbol}${itemPd.pdPrice}-${itemPd.currencySymbol}${itemPd.pdPriceEnd}",
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
