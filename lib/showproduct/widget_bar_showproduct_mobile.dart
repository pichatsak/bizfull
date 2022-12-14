import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/product_view_model.dart';

import 'package:flutter/material.dart';

Widget barshowproductmobile(context, ProductViewModel pdModel) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    // "ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม หนานุ่ม ซับน้ำไว(สีเหลืองเทา) ผ้าเช็ดรถ ผ้าไมโครไฟเบ  ผ้าเช็ดรถ ผ้าเอนกประสงค์ ผ้าไมโครไฟเบอร์ 3D เกรดพรีเมี่ยม",
                    pdModel.pdName,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontFamily: "Prompt-Medium"),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ))
  ]);
}
