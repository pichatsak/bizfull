import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/tools/hex_color.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget showTitleIndex1(BuildContext context, dataGroup1) {
  return Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, top: 0),
    child: BootstrapRow(
      children: <BootstrapCol>[
        BootstrapCol(
          sizes: 'col-12',
          child: Center(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 575) {
                  return dataGroup1['type_show'] == "pic"
                      ? SizedBox(
                          width: 500,
                          child: CachedNetworkImage(
                            filterQuality: FilterQuality.high,
                            imageUrl:
                                "${Global.hostImgGroupPd}/${dataGroup1['pic']}",
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        )
                      : Center(
                          child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            dataGroup1['txt_head'],
                            style: TextStyle(
                                color:
                                    HexColor.fromHex(dataGroup1['txt_color']),
                                fontWeight: FontWeight.bold,
                                fontSize: dataGroup1["txt_size"]),
                          ),
                        ));
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: dataGroup1['type_show'] == "pic"
                        ? SizedBox(
                            child: CachedNetworkImage(
                              imageUrl:
                                  "${Global.hostImgGroupPd}/${dataGroup1['pic']}",
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          )
                        : Center(
                            child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              dataGroup1['txt_head'],
                              style: TextStyle(
                                  color:
                                      HexColor.fromHex(dataGroup1['txt_color']),
                                  fontWeight: FontWeight.bold,
                                  fontSize: dataGroup1["txt_size"]),
                            ),
                          )),
                  );
                }
              },
            ),
          ),
        ),
      ],
    ),
  );
}
