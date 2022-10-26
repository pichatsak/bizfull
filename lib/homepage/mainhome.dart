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
import 'package:bizfull/nav/widget_drawble_mobile.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollController = ScrollController();
  final box = GetStorage();
  int page = 0;
  void scrollListener() {
    if (scrollController.offset > 125) {
      if (!box.read("isShowNav")) {
        box.write("isShowNav", true);
        box.write("colorCur", box.read("colorNav"));
        setState(() {});
      }
    } else {
      if (box.read("isShowNav")) {
        box.write("isShowNav", false);
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    box.write("curpage", "home");
    box.write("isShowNav", false);
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    double hbar;
    double toppd = 5;
    String typeSc;
    String typM;
    if (Device.width > 991) {
      hbar = 116; //134
      typeSc = "pc";
      toppd = 5;
      typM = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 0;
      toppd = 0;
      // hbar = 70;
      typeSc = "mobile";
      typM = "mobile";
    } else {
      toppd = 0;
      hbar = 0;
      typeSc = "mobile";
      typM = "mobile";
    }

    return Scaffold(
        drawer: const Drawermenu(),
        body: Stack(
          children: [
            SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    SizedBox(height: hbar),
                    BootstrapContainer(
                        fluid: typM == "pc" ? false : true,
                        padding: EdgeInsets.only(top: toppd),
                        children: <Widget>[
                          const SliderTop(),
                          nameshipping(),
                          showproductshipping(context),
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
                          typM == "pc" ? footter() : Container()
                        ]),
                    BootstrapContainer(
                        fluid: true,
                        decoration: BoxDecoration(
                            color:
                                typM == "pc" ? const Color(0xfff3f3f3) : null),
                        padding: const EdgeInsets.only(top: 10),
                        children: <Widget>[
                          typM == "pc"
                              ? barfootter()
                              : const SizedBox(
                                  height: 20,
                                )
                        ]),
                  ],
                )),
            // ignore: prefer_const_constructors
            Navmain(),
          ],
        ),
        floatingActionButton: typeSc == "pc"
            ? FloatingActionButton(
                tooltip: 'Live Chat',
                hoverColor: const Color(0xffef4137),
                elevation: 12,
                onPressed: () {},
                backgroundColor: const Color(0xffad2332),
                child: const Icon(
                  FontAwesomeIcons.solidCommentDots,
                  size: 24,
                ),
              )
            : const SizedBox(
                height: 0,
              ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(page, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
