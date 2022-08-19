import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';

Widget nameshopping() {
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
                      return SizedBox(
                        width: 500,
                        child: Image.asset(
                          "images/shop.png",
                          filterQuality: FilterQuality.high,
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: SizedBox(
                          child: Image.asset(
                            "images/shop.png",
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.contain,
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
