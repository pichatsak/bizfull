import 'dart:convert';

import 'package:bizfull/about/widget_bar_about.dart';
import 'package:bizfull/about/widget_bar_about_mobile.dart';
import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final box = GetStorage();
  bool isLoad = false;
  String htmlCont = "";
  @override
  void initState() {
    box.write("curpage", "internationalshipping");
    super.initState();
    getContPage();
  }

  Future<void> getContPage() async {
    var url = "${Global.hostName}/contpage_get.php?page=about";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      setState(() {
        htmlCont = getData["data"];
        isLoad = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    String typeSc1;
    double h;
    String typeSc;
    if (Device.width > 991) {
      hbar = 119;
      pad = 25;
      typeSc1 = "pc";
      typeSc = "pc";
      h = 70;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 20;
      typeSc1 = "md";
      typeSc = "mobile";
      h = 30;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 10;
      typeSc1 = "xm";
      typeSc = "mobile";
      h = 30;
    } else {
      hbar = 70;
      pad = 10;
      typeSc1 = "xs";
      typeSc = "mobile";
      h = 30;
    }
    double fM1;
    double pL;
    double pR;
    double pT;
    double pB;
    String hT;
    if (Device.width > 991) {
      fM1 = 24;
      pL = 20;
      pR = 20;
      pT = 0;
      pB = 20;
      hT = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      fM1 = 23;
      pL = 20;
      pR = 20;
      pT = 0;
      pB = 10;
      hT = "mobile";
    } else {
      fM1 = 20;
      pL = 20;
      pR = 20;
      pT = 0;
      pB = 10;
      hT = "mobile";
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
                            ? barabout(context)
                            : baraboutmobile(context)
                      ]),
                  BootstrapContainer(
                      fluid: typeSc == "pc" ? false : true,
                      padding: EdgeInsets.only(top: pad),
                      children: [
                        BootstrapRow(
                          children: <BootstrapCol>[
                            BootstrapCol(
                              sizes: 'col-12',
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: pL, right: pR, top: pT),
                                child: Column(
                                  children: [
                                    hT == "pc"
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 9),
                                                child: const Icon(
                                                  Ionicons
                                                      .information_circle_outline,
                                                  color: Color(0xffa91f2e),
                                                  size: 22,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Flexible(
                                                child: Text(
                                                  "เกี่ยวกับเรา",
                                                  style: TextStyle(
                                                      fontSize: fM1,
                                                      fontFamily:
                                                          "Prompt-Medium"),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Container(),
                                    hT == "pc"
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: pB),
                                            child: Container(
                                                height: 1,
                                                color: Colors.black12),
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ),
                            BootstrapCol(
                                sizes:
                                    'col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12',
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 10),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 20),
                                        child: isLoad
                                            ? HtmlWidget(htmlCont)
                                            : const Center(),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        )
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
