import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/international%20shipping/ship/widget_data_international_ship.dart';
import 'package:bizfull/international%20shipping/widget_bar_international.dart';
import 'package:bizfull/international%20shipping/widget_bar_international_mobile.dart';
import 'package:bizfull/international%20shipping/car/widget_data_international.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Internationalshipping extends StatefulWidget {
  const Internationalshipping({Key? key}) : super(key: key);

  @override
  State<Internationalshipping> createState() => _InternationalshippingState();
}

class _InternationalshippingState extends State<Internationalshipping> {
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "internationalshipping");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    String typeSc1;
    double h;
    String typeSc;
    double hzB;
    double wzB;
    String tP;
    double pp;
    if (Device.width > 991) {
      hbar = 119;
      pad = 25;
      typeSc1 = "pc";
      typeSc = "pc";
      h = 70;
      hzB = 570;
      wzB = 1000;
      tP = "pc";
      pp = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 20;
      typeSc1 = "md";
      typeSc = "mobile";
      h = 30;
      hzB = 570;
      wzB = 1000;
      tP = "pc";
      pp = 0;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 10;
      typeSc1 = "xm";
      typeSc = "mobile";
      h = 30;
      hzB = 410;
      wzB = 690;
      tP = "mobile";
      pp = 5;
    } else {
      hbar = 70;
      pad = 10;
      typeSc1 = "xs";
      typeSc = "mobile";
      h = 30;
      hzB = 410;
      wzB = 690;
      tP = "mobile";
      pp = 5;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
        drawer: const Drawermenu(),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: hbar),
                  BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: [
                        typeSc == "pc"
                            ? barinternational(context)
                            : barinternationalmobile(context)
                      ]),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      Column(
                        children: [
                          tP == "mobile"
                              ? Center(
                                  child: SizedBox(
                                    height: hzB,
                                    child: RawScrollbar(
                                      thumbVisibility: false,
                                      thumbColor: Colors.black12,
                                      radius: const Radius.circular(20),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: SizedBox(
                                            width: wzB,
                                            child: datainternational()),
                                      ),
                                    ),
                                  ),
                                )
                              : datainternational(),
                          SizedBox(height: pp),
                          tP == "mobile"
                              ? Center(
                                  child: SizedBox(
                                    height: hzB,
                                    child: RawScrollbar(
                                      thumbVisibility: false,
                                      thumbColor: Colors.black12,
                                      radius: const Radius.circular(20),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: SizedBox(
                                            width: wzB,
                                            child: datainternationalship()),
                                      ),
                                    ),
                                  ),
                                )
                              : datainternationalship(),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: h),
                  typeSc1 == "pc"
                      ? BootstrapContainer(
                          fluid: true,
                          decoration:
                              const BoxDecoration(color: Color(0xfff3f3f3)),
                          children: <Widget>[barfootterlogin()])
                      : Container(),
                ],
              ),
            ),
            const Navmain(),
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
            ? bottom(1, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
