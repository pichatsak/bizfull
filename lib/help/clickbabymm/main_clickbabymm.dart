import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/help/clickbabymm/widget_babymmleft.dart';
import 'package:bizfull/help/clickbabymm/widget_babymmright.dart';
import 'package:bizfull/help/clickbabymm/widget_bar_babymm_mobile.dart';
import 'package:bizfull/help/clickbabymm/widget_bar_clickbabtmm.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Clickbaymm extends StatefulWidget {
  const Clickbaymm({Key? key}) : super(key: key);

  @override
  State<Clickbaymm> createState() => _ClickbaymmState();
}

class _ClickbaymmState extends State<Clickbaymm> {
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "clickbabymm");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    String typeSc1;
    double h;
    String typeSc;
    String typeSc2;
    if (Device.width > 991) {
      hbar = 119;
      pad = 25;
      typeSc1 = "pc";
      typeSc = "pc";
      typeSc2 = "pc";
      h = 70;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 10;
      typeSc1 = "md";
      typeSc = "mobile";
      typeSc2 = "mobile";
      h = 30;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 10;
      typeSc1 = "xm";
      typeSc = "mobile";
      typeSc2 = "mobile";
      h = 30;
    } else {
      hbar = 70;
      pad = 10;
      typeSc1 = "xs";
      typeSc = "mobile";
      typeSc2 = "mobile";
      h = 30;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(drawer: const Drawermenu(),
      
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
                            ? barclickbabymm(context)
                            : barbabymmmobile(context)
                      ]),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      BootstrapRow(children: <BootstrapCol>[
                        BootstrapCol(
                            sizes:
                                'col-xl-9 col-12 col-sm-12 col-md-12 col-lg-8',
                            child: babymmleft()),
                        BootstrapCol(
                            sizes: 'col-xl-3  col-12 col-lg-4',
                            child:
                                typeSc2 == "pc" ? babymmright(context) : Container()),
                      ])
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
