import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/vdo_recom_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:bizfull/vdo/widget_bar_vdo.dart';
import 'package:bizfull/vdo/widget_bar_vdo_mobile.dart';
import 'package:bizfull/vdo/widget_data_vdo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class VdoListPage extends StatefulWidget {
  const VdoListPage({Key? key}) : super(key: key);

  @override
  State<VdoListPage> createState() => _VdoListPageState();
}

class _VdoListPageState extends State<VdoListPage> {
  final box = GetStorage();
  List<VdoRecomModel> listColums = [];
  bool isLoad = false;
  @override
  void initState() {
    box.write("curpage", "internationalshipping");
    super.initState();
    getColums();
  }

  Future<void> getColums() async {
    listColums = [];
    var url = "${Global.hostName}/vdo_recom_all.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        VdoRecomModel getRow = VdoRecomModel.fromJson(data);
        listColums.add(getRow);
      }).toList();
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
                  BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: [
                        typeSc == "pc" ? barVdo(context) : barVdoMobile(context)
                      ]),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      isLoad ? dataVdo(listColums, context) : const Center()
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
