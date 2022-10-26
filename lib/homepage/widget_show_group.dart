import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/group_data_model.dart';
import 'package:bizfull/tools/hex_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget showGroupMain(GroupDataModel itemGroup) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
    child: BootstrapRow(
      children: <BootstrapCol>[
        BootstrapCol(
            sizes: 'col-12',
            child: Center(
              // child: SizedBox(
              //   width: 500,
              //   child: Image.asset(
              //     "images/shop.png",
              //     filterQuality: FilterQuality.high,
              //   ),
              // ),
              child: SizedBox(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    if (constraints.maxWidth > 575) {
                      return itemGroup.typeShow == "pic"
                          ? SizedBox(
                              width: 500,
                              child: CachedNetworkImage(
                                filterQuality: FilterQuality.high,
                                imageUrl:
                                    "${Global.hostImgGroupPd}/${itemGroup.pic}",
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            )
                          : Center(
                              child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(
                                itemGroup.txtHead,
                                style: TextStyle(
                                    color: HexColor.fromHex(itemGroup.txtColor),
                                    fontWeight: FontWeight.bold,
                                    fontSize: itemGroup.txtSize.toDouble()),
                              ),
                            ));
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: SizedBox(
                          child: CachedNetworkImage(
                            imageUrl:
                                "${Global.hostImgGroupPd}/${itemGroup.pic}",
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
            )),
      ],
    ),
  );
}
