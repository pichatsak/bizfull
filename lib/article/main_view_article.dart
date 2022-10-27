import 'dart:convert';

import 'package:bizfull/article/widget_bar_article_view.dart';
import 'package:bizfull/article/widget_bar_article_view_mobile.dart';
import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/colums_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class ArticleView extends StatefulWidget {
  final String idGet;
  const ArticleView({Key? key, required this.idGet}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final box = GetStorage();
  late ColumsModel itemData;
  bool isLoad = false;
  String id = "";
  @override
  void initState() {
    box.write("curpage", "internationalshipping");
    super.initState();
    id = widget.idGet;
    getColumsView();
  }

  Future<void> getColumsView() async {
    var url = "${Global.hostName}/get_column.php?id=$id";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      itemData = ColumsModel.fromJson(getData["data"]);
      setState(() {
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
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
        drawer: const Drawermenu(),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: hbar),
                  isLoad
                      ? BootstrapContainer(
                          fluid: true,
                          decoration:
                              const BoxDecoration(color: Color(0xfff3f3f3)),
                          children: [
                              typeSc == "pc"
                                  ? bararticleView(context, itemData, isLoad)
                                  : bararticleViewmobile(
                                      context, itemData, isLoad)
                            ])
                      : const Center(),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      isLoad
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: BootstrapRow(children: <BootstrapCol>[
                                BootstrapCol(
                                    sizes: 'col-12',
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 11),
                                            child: const Icon(
                                              FontAwesomeIcons.solidNewspaper,
                                              color: Color(0xffa91f2e),
                                              size: 25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Flexible(
                                            child: Text(
                                              // "บทความ",
                                              itemData.colTitle,
                                              style: TextStyle(
                                                  fontSize:
                                                      typeSc == "pc" ? 32 : 18,
                                                  fontFamily: "Prompt-Medium"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ]),
                            )
                          : const Center(),
                      isLoad
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: HtmlWidget(itemData.colDetail),
                            )
                          : const Center(),
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
