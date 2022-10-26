import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/homepage/shipping/main_show_shipping.dart';
import 'package:bizfull/homepage/shipping/main_title_show.dart';
import 'package:bizfull/homepage/shopping/widget_show_product_shop.dart';
import 'package:bizfull/homepage/widget_bar_footter.dart';
import 'package:bizfull/homepage/widget_footter.dart';
import 'package:bizfull/homepage/widget_promotion.dart';
import 'package:bizfull/homepage/widget_show_group.dart';
import 'package:bizfull/homepage/widget_slidershow.dart';
import 'package:bizfull/models/cate_model.dart';
import 'package:bizfull/models/group_data_model.dart';
import 'package:bizfull/models/group_sub_model.dart';
import 'package:bizfull/models/product_model.dart';

import 'package:bizfull/nav/mainnav.dart';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scrollController = ScrollController();
  String imgIndexPd1 = "";
  final box = GetStorage();
  // ignore: prefer_typing_uninitialized_variables
  var dataGroup1;
  List<GroupSubModel> groupSub1 = [];
  List<GroupDataModel> groupDatas = [];
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
    getProductIndex1();
    getProductIndex2();
    super.initState();
  }

  Future<void> getProductIndex2() async {
    var url = "${Global.hostName}/get_group_2_index.php";
    var res = await http.get(Uri.parse(url));
    var dataGroupMore = await json.decode(res.body)['data'];
    dataGroupMore.map((data) {
      GroupDataModel groupDataGet = GroupDataModel.fromJson(data["data_group"]);
      var getSub = data['group_sub_all'];
      List<GroupSubModel> groupSubMain = [];
      getSub.map((data) {
        GroupSubModel dateSubGet = GroupSubModel.fromJson(data["data_sub"]);
        List<ProductModel> pdModelIn = [];
        List<CategoryModel> cateModelIn = [];
        data["data_pd"].map((data2) {
          ProductModel pdGet = ProductModel.fromJson(data2);
          pdModelIn.add(pdGet);
        }).toList();
        dateSubGet.productList = pdModelIn;
        data["data_cate"].map((data3) {
          CategoryModel cateGet = CategoryModel.fromJson(data3);
          cateModelIn.add(cateGet);
        }).toList();
        dateSubGet.cateList = cateModelIn;
        groupSubMain.add(dateSubGet);
      }).toList();
      groupDataGet.listGroupSub = groupSubMain;
      groupDatas.add(groupDataGet);
    }).toList();
  }

  Future<void> getProductIndex1() async {
    var url = "${Global.hostName}/get_group_1_index.php";
    var res = await http.get(Uri.parse(url));

    dataGroup1 = await json.decode(res.body)['data_group'];
    var getSub1 = await json.decode(res.body)['group_sub_all'];

    getSub1.map((data) {
      GroupSubModel dateSubGet = GroupSubModel.fromJson(data["data_sub"]);
      List<ProductModel> pdModelIn = [];
      List<CategoryModel> cateModelIn = [];
      data["data_pd"].map((data2) {
        ProductModel pdGet = ProductModel.fromJson(data2);
        pdModelIn.add(pdGet);
      }).toList();
      dateSubGet.productList = pdModelIn;
      data["data_cate"].map((data3) {
        CategoryModel cateGet = CategoryModel.fromJson(data3);
        cateModelIn.add(cateGet);
      }).toList();
      dateSubGet.cateList = cateModelIn;
      groupSub1.add(dateSubGet);
    }).toList();
    setState(() {});
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
                          // ignore: prefer_const_constructors
                          SliderTop(),
                          dataGroup1 != null
                              ? showTitleIndex1(context, dataGroup1)
                              : const SizedBox(
                                  height: 0,
                                ),
                          ...groupSub1
                              .map((item) => showproductshipping(context, item))
                              .toList(),
                          const SliderBanner(),
                          ...groupDatas
                              .map((itemGroup) => Column(
                                    children: [
                                      showGroupMain(itemGroup),
                                      ...itemGroup.listGroupSub
                                          .map((itemSub) =>
                                              showProductShop(context, itemSub))
                                          .toList(),
                                    ],
                                  ))
                              .toList(),
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
