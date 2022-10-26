import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:bizfull/profile/profile_mobile/widget_bar_homemenu.dart';
import 'package:bizfull/profile/profile_mobile/widget_home_mm_mobile.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileMobile extends StatefulWidget {
  const ProfileMobile({Key? key}) : super(key: key);

  @override
  State<ProfileMobile> createState() => _ProfileMobileState();
}

class _ProfileMobileState extends State<ProfileMobile> {
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

    return Scaffold(drawer: const Drawermenu(),
       
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: bM == "pc" ? MediaQuery.of(context).size.height : null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: hbar),
                        BootstrapContainer(
                            fluid: true,
                            decoration:
                                const BoxDecoration(color: Color(0xfff3f3f3)),
                            children: [
                              bM == "pc"
                                  ? barhomemenumobile(context)
                                  : Container(),
                            ]),
                        BootstrapContainer(
                          fluid: bM == "pc" ? false : true,
                          padding: EdgeInsets.only(top: pad),
                          children: [homemmmobile(context)],
                        ),
                        SizedBox(height: h),
                      ],
                    ),
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
