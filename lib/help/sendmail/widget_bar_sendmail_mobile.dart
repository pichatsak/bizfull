import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

Widget barsendmailmobile(context) {
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
                const Flexible(
                  child: Text(
                    "แจ้งปัญหาการใช้งานเพิ่มเติม",
                    style: TextStyle(
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
