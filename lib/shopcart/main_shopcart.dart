import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/shopcart/widget_data_shopcart.dart';
import 'package:bizfull/shopcart/widget_data_shopcart1.dart';
import 'package:bizfull/shopcart/widget_enddesktop.dart';
import 'package:bizfull/shopcart/widget_endmobile.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  final SingingCharacter character = SingingCharacter.lafayette;
  final SingingCharacter1 character1 = SingingCharacter1.lafayette;
  final SingingCharacter2 character2 = SingingCharacter2.lafayette;
  final SingingCharacter3 character3 = SingingCharacter3.lafayette;

  @override
  Widget build(BuildContext context) {
    String typeSc;
    double h;
    if (Device.width > 991) {
      typeSc = "pc";
      h = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      typeSc = "pc";
      h = 20;
    } else if (Device.width >= 576 && Device.width <= 767) {
      typeSc = "pc";
      h = 20;
    } else {
      typeSc = "mobile";
      h = 0;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Navmain(),
          BootstrapContainer(fluid: false, children: [
            datashopcart(character, setState),
            datashopcart1(character1, setState),
            datashopcart(character, setState),
            typeSc == "pc"
                ? enddesktop(character2, setState)
                : endmobile(character3, setState)
          ]),
          SizedBox(height: h),
        ],
      )),
    );
  }
}
