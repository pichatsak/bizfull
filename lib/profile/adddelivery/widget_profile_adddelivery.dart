import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/profile/adddelivery/widget_bar_add.dart';
import 'package:bizfull/profile/adddelivery/widget_bar_add_mobile.dart';
import 'package:bizfull/profile/adddelivery/widget_dataright_add.dart';
import 'package:bizfull/profile/adddelivery/widget_left_adddelivery.dart';
import 'package:bizfull/profile/historysuc/widget_drawer.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileAddDelivery extends StatefulWidget {
  const ProfileAddDelivery({Key? key}) : super(key: key);

  @override
  State<ProfileAddDelivery> createState() => _ProfileAddDeliveryState();
}

class _ProfileAddDeliveryState extends State<ProfileAddDelivery> {
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "profile");
    super.initState();
  }

  final GlobalKey<ScaffoldState> key = GlobalKey();
  bool verticalList = true;
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    String typeSc1;
    double h;
    String typeSc;
    String bM;
    if (Device.width > 991) {
      hbar = 119;
      pad = 40;
      typeSc1 = "pc";
      typeSc = "pc";
      h = 70;
      bM = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 10;
      typeSc1 = "md";
      typeSc = "mobile";
      h = 30;
      bM = "mobile";
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 10;
      typeSc1 = "xm";
      typeSc = "mobile";
      h = 30;
      bM = "mobile";
    } else {
      hbar = 70;
      pad = 10;
      typeSc1 = "xs";
      typeSc = "mobile";
      h = 30;
      bM = "mobile";
    }
    bootstrapGridParameters(gutterSize: 0);

    return Scaffold(
        key: key,
        endDrawer: const NavDrawer(),
        drawerEdgeDragWidth: 0,
        drawer: Container(width: 100),
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
                        bM == "pc" ? baradd(context) : baraddmobile(context),
                      ]),
                  BootstrapContainer(
                    fluid: bM == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      BootstrapRow(children: <BootstrapCol>[
                        BootstrapCol(
                            sizes: 'col-lg-2',
                            invisibleForSizes: 'xs sm md',
                            child: leftadddelivery(context)),
                        BootstrapCol(
                            sizes: 'col-lg-10 col-12 col-sm-12 col-md-12',
                            child: Column(
                              children: [
                                datarightadd(context, key, setState,
                                    verticalList, scrollController)
                              ],
                            ))
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
