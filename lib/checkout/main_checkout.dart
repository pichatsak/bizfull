import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/checkout/widget_adddress.dart';
import 'package:bizfull/checkout/widget_bar_mobile.dart';
import 'package:bizfull/checkout/widget_barcheckout.dart';
import 'package:bizfull/checkout/widget_bin.dart';

import 'package:bizfull/checkout/widget_menuproduct.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  final SingingCharacter1 character1 = SingingCharacter1.lafayette;
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "checkout");
    super.initState();
  }

  final Addressradio addressradio = Addressradio.lafayette;
  @override
  Widget build(BuildContext context) {
    double hbar;
    double h;
    String typeSc1;
    String typeSc;
    EdgeInsets rdShow;
    EdgeInsets rdShow2;
    double hP;

    if (Device.width > 991) {
      hbar = 119;
      h = 30;
      typeSc1 = "pc";
      typeSc = "pc";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 10, right: 20);
      hP = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      h = 30;
      typeSc1 = "md";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      h = 30;
      typeSc1 = "sm";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 20, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
    } else {
      hbar = 70;
      h = 30;
      typeSc1 = "xs";
      typeSc = "mobile";
      rdShow = const EdgeInsets.only(top: 15, left: 20, right: 10);
      rdShow2 = const EdgeInsets.only(top: 20, left: 20, right: 10);
      hP = 0;
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
                            ? barcheckout(context)
                            : barmobile(context)
                      ]),
                  BootstrapContainer(
                      fluid: typeSc == "pc" ? false : true,
                      padding: EdgeInsets.only(top: hP),
                      children: [
                        BootstrapRow(children: <BootstrapCol>[
                          BootstrapCol(
                            sizes: 'col-lg-8 col-12 col-sm-12 col-md-12',
                            child: Column(
                              children: [
                                Padding(
                                  padding: rdShow,
                                  child: Container(
                                      //  color: const Color(0xfff3f3f3),
                                      child: adddress(
                                          context, addressradio, setState)),
                                ),
                                menuproduct(),
                                menuproduct(),
                              ],
                            ),
                          ),
                          BootstrapCol(
                              sizes: 'col-lg-4 col-12 col-sm-12 col-md-12',
                              child: Padding(
                                  padding: rdShow2,
                                  child: Container(
                                      // color: const Color(0xfff3f3f3),
                                      // decoration: BoxDecoration(
                                      //     border: Border.all(color: Colors.black12),
                                      //     borderRadius: BorderRadius.circular(7)),
                                      child: bin(character1, setState,context))))
                        ])
                      ]),
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
