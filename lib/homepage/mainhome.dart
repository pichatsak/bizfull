import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/homepage/shopping/main_show_shopping1.dart';
import 'package:bizfull/homepage/shopping/main_show_shopping2.dart';
import 'package:bizfull/homepage/shopping/main_show_shopping3.dart';
import 'package:bizfull/homepage/widget_bar_footter.dart';
import 'package:bizfull/homepage/widget_footter.dart';
import 'package:bizfull/homepage/widget_name_shipping.dart';
import 'package:bizfull/homepage/widget_nameshopping.dart';
import 'package:bizfull/homepage/widget_promotion.dart';
import 'package:bizfull/homepage/shipping/main_show_shipping.dart';
import 'package:bizfull/homepage/shopping/main_show_shopping.dart';
import 'package:bizfull/homepage/widget_slidershow.dart';

import 'package:bizfull/nav/mainnav.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    double hbar;
    if (Device.width > 991) {
      hbar = 179;
    } else {
      hbar = 70;
    }
    return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(height: hbar),
                BootstrapContainer(
                    fluid: false,
                    padding: const EdgeInsets.only(top: 5),
                    children: <Widget>[
                      const SliderTop(),
                      nameshipping(),
                      showproductshipping(
                        context,
                      ),
                      const SliderBanner(),
                      nameshopping(),
                      showproductshopping(context),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: showproductshopping1(context),
                      ),
                      showproductshopping2(context),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: showproductshopping3(context),
                      ),
                      footter()
                    ]),
                BootstrapContainer(
                    fluid: true,
                    decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                    padding: const EdgeInsets.only(top: 10),
                    children: <Widget>[barfootter()]),
              ],
            )),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom()
            : const SizedBox(
                height: 0,
              ));
  }
}
