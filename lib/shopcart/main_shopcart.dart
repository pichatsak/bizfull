import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/shopcart/widget_data_shopcart.dart';
import 'package:bizfull/shopcart/widget_data_shopcart1.dart';
import 'package:bizfull/shopcart/widget_enddesktop.dart';
import 'package:bizfull/shopcart/widget_endmobile.dart';
import 'package:bizfull/shopcart/widget_showtopbar.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
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

  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "shopcart");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String typeSc;
    String typeSc1;
    double h;
    double hbar;
    if (Device.width > 991) {
      typeSc = "pc";
      typeSc1 = "pc";
      h = 20;
      hbar = 179;
    } else if (Device.width >= 768 && Device.width <= 991) {
      typeSc = "pc";
      typeSc1 = "md";
      h = 20;
      hbar = 70;
    } else if (Device.width >= 576 && Device.width <= 767) {
      typeSc = "pc";
      typeSc1 = "xm";
      h = 20;
      hbar = 70;
    } else {
      typeSc = "mobile";
      typeSc1 = "xs";
      h = 0;
      hbar = 70;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: hbar),
              BootstrapContainer(
                  fluid: true,
                  decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                  children: [showtopbar(context)]),
              BootstrapContainer(fluid: false, children: [
                datashopcart(character, setState),
                datashopcart1(character1, setState),
                datashopcart(character, setState),
                typeSc == "pc"
                    ? enddesktop(character2, setState,context)
                    : endmobile(character3, setState,context)
              ]),
              SizedBox(height: h),
              typeSc1 == "pc"
                  ? BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: <Widget>[barfootterlogin()])
                  : Container()
            ],
          )),
          const Navmain(),
        ],
      ),
    bottomNavigationBar: Device.width <= 991
            ? bottom(1,context)
            : const SizedBox(
                height: 0,
              ));
  }
}
