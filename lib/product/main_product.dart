import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/cate_model_cb.dart';
import 'package:bizfull/models/group_sub_cb.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/product/widget_bar.dart';
import 'package:bizfull/product/widget_bar_product_mobile.dart';
import 'package:bizfull/product/widget_data_left.dart';
import 'package:bizfull/product/widget_data_right.dart';
import 'package:bizfull/product/drawer/widget_dawer_m.dart';
import 'package:bizfull/product/widget_page.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final box = GetStorage();
  List<ProductViewModel> listProducts = [];
  List<CategoryModelCb> listCate = [];
  List<GroupSubCbModel> listGroupShop = [];
  List<GroupSubCbModel> listGroupShip = [];
  List<CategoryModelCb> multipleSelected = [];
  List multipleSelectedGroupSub = [];
  List multipleSelectedGroupSubShip = [];
  bool isLoadProduct = false;
  bool isCheckShip = false;
  bool isCheckShop = false;
  String sortChoose = "hot";
  String? selectedValuePrice;
  int pageCur = 1;
  int pageAll = 1;
  @override
  void initState() {
    box.write("curpage", "product");
    super.initState();
    getCateAll();
    getGroupShop();
    getGroupShip();
    getProductAll();
  }

  Future<void> getProductAll() async {
    listProducts = [];
    String? priceSort = "";
    if (selectedValuePrice != null) {
      priceSort = selectedValuePrice;
    }
    List<int> cateCbAll = [];
    String cateStr = "";
    if (multipleSelected.isNotEmpty) {
      multipleSelected.map((e) => cateCbAll.add(e.categoryId)).toList();
      cateStr = cateCbAll.toString();
    }
    var dataForm = {
      "sort": sortChoose,
      "page": pageCur.toString(),
      "price_sort": priceSort,
      "cate": cateStr
    };
    var url = "${Global.hostName}/get_product_all.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    var getData = await json.decode(res.body);
    if (getData["status"] == "ok") {
      getData["data"].map((dataPd) {
        ProductViewModel pdGet = ProductViewModel.fromJson(dataPd);
        listProducts.add(pdGet);
      }).toList();
      pageAll = getData["page_all"];
      setState(() {
        isLoadProduct = true;
      });
    }
  }

  Future<void> getGroupShop() async {
    var url = "${Global.hostName}/get_group_sub_by_type.php?type=shop";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData["status"] == "ok") {
      getData["data"].map((dataCate) {
        GroupSubCbModel pdGet = GroupSubCbModel.fromJson(dataCate);
        listGroupShop.add(pdGet);
      }).toList();
      setState(() {});
    }
  }

  Future<void> getGroupShip() async {
    var url = "${Global.hostName}/get_group_sub_by_type.php?type=ship";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData["status"] == "ok") {
      getData["data"].map((dataCate) {
        GroupSubCbModel pdGet = GroupSubCbModel.fromJson(dataCate);
        listGroupShip.add(pdGet);
      }).toList();
      setState(() {});
    }
  }

  Future<void> getCateAll() async {
    var url = "${Global.hostName}/category_get.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData["status"] == "ok") {
      getData["data"].map((dataCate) {
        CategoryModelCb pdGet = CategoryModelCb.fromJson(dataCate);
        listCate.add(pdGet);
      }).toList();
      setState(() {});
    }
  }

  void updateChooseCate() {
    setState(() {
      getProductAll();
    });
  }

  void updateSelectPrice(String val) {
    setState(() {
      selectedValuePrice = val;
      getProductAll();
    });
  }

  void updateSort(String val) {
    setState(() {
      sortChoose = val;
      getProductAll();
    });
  }

  void updateCbShip(bool val) {
    setState(() {
      isCheckShip = val;
    });
  }

  void updateCbShop(bool val) {
    setState(() {
      isCheckShop = val;
    });
  }

  void updatePage(int page) {
    setState(() {
      pageCur = page;
    });
  }

  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    String typeSc1;
    double h;

    String typeSc;
    if (Device.width > 991) {
      hbar = 119;
      pad = 40;
      typeSc1 = "pc";
      typeSc = "pc";
      h = 30;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 10;
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
        key: key,
        endDrawer: const Drawerproduct(),
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
                        typeSc == "pc"
                            ? barproduct(context)
                            : barproductmobile(context)
                      ]),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      BootstrapRow(children: <BootstrapCol>[
                        BootstrapCol(
                            sizes: 'col-lg-2',
                            invisibleForSizes: 'xs sm md',
                            child: dataleft(
                                listCate,
                                multipleSelected,
                                setState,
                                isCheckShip,
                                isCheckShop,
                                updateCbShip,
                                updateCbShop,
                                listGroupShop,
                                multipleSelectedGroupSub,
                                listGroupShip,
                                multipleSelectedGroupSubShip,
                                updateChooseCate)),
                        BootstrapCol(
                            sizes: 'col-lg-10 col-12 col-sm-12 col-md-12',
                            child: Column(
                              children: [
                                dararight(
                                    setState,
                                    key,
                                    updateSort,
                                    sortChoose,
                                    selectedValuePrice,
                                    updateSelectPrice,
                                    isLoadProduct,
                                    listProducts,
                                    pageCur,
                                    pageAll,
                                    updatePage),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 30, 0, 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Pager(
                                        currentPage: pageCur,
                                        totalPages: pageAll,
                                        onPageChanged: (page) {
                                          pageCur = page;
                                          getProductAll();
                                        },
                                      ),
                                    ],
                                  ),
                                ),
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
