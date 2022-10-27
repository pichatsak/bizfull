// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/pic_more_mobile.dart';
import 'package:bizfull/models/price_more_model.dart';
import 'package:bizfull/models/product_pic_more_model.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:bizfull/models/review_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:bizfull/showproduct/dataproduct/comment/widget_comment.dart';
import 'package:bizfull/showproduct/dataproduct/widget_dataproduct.dart';
import 'package:bizfull/showproduct/dataproduct/widget_product_other.dart';
import 'package:bizfull/showproduct/widget_bar_showproduct_mobile.dart';
import 'package:bizfull/showproduct/widget_showproduct.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

class ShowProduct extends StatefulWidget {
  final String idGet;
  const ShowProduct({Key? key, required this.idGet}) : super(key: key);

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  final box = GetStorage();
  String pdId = "";
  bool isLoadView = false;
  bool loadReview = false;
  bool isLoadPdOther = false;
  late ProductViewModel pdModel;
  List<ProductViewModel> listPdOther = [];
  List<ProductPicMoreModel> listpicrMore = [];
  List<PriceMoreModel> listPriceMore = [];
  List<ReviewModel> listReviews = [];
  List<PicMoreMobile> listPiceMoreMobile = [];
  int numProduct = 1;
  TextEditingController numQuan = TextEditingController(text: "1");
  String picMain = "";
  int pageReviewCur = 1;
  int maxPageReview = 0;
  double startAll = 0;
  double rateAll = 0;
  String priceMainShow = "";
  int posPriceMoreChoose = 0;

  var formatNum = NumberFormat('#,###,###.00');
  var formatNumNoDc = NumberFormat('#,###,###');
  @override
  void initState() {
    box.write("curpage", "showproduct");
    super.initState();
    pdId = widget.idGet;
    getDetailProduct();
  }

  Future<void> getDetailProduct() async {
    listPiceMoreMobile = [];
    var url = "${Global.hostName}/get_product.php?id=$pdId";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      pdModel = ProductViewModel.fromJson(getData["data"]);
      listPiceMoreMobile.add(PicMoreMobile(picSrc: pdModel.pdPic));
      if (pdModel.pdType == "shop") {
        if (pdModel.pdTypePrice == "one") {
          priceMainShow =
              "${pdModel.currencySymbol}${formatNum.format(pdModel.pdPrice)}";
        } else {
          getData["price_more"].map((dataPrice) {
            PriceMoreModel prGet = PriceMoreModel.fromJson(dataPrice);
            listPriceMore.add(prGet);
          }).toList();
          priceMainShow =
              "${pdModel.currencySymbol}${formatNum.format(listPriceMore[0].pdmPrice)}";
        }
      } else {
        priceMainShow =
            "${pdModel.currencySymbol}${formatNum.format(pdModel.pdPrice)} - ${pdModel.currencySymbol}${formatNum.format(pdModel.pdPriceEnd)}";
      }

      startAll = pdModel.pdStar;
      rateAll = pdModel.pdPoint;
      getData["img_product"].map((dataPic) {
        ProductPicMoreModel picGet = ProductPicMoreModel.fromJson(dataPic);
        listpicrMore.add(picGet);
        listPiceMoreMobile.add(PicMoreMobile(picSrc: picGet.ppmSrc));
      }).toList();
      picMain = "${Global.hostImgProduct}/${pdModel.pdId}/${pdModel.pdPic}";
      setState(() {
        isLoadView = true;
      });
      getReviewProduct();
      getProductOther();
    }
  }

  Future<void> getReviewProduct() async {
    listReviews = [];
    var url = "${Global.hostName}/review_get.php?id=$pdId&page=$pageReviewCur";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      maxPageReview = getData["page_all"];
      getData["data"].map((dataRv) {
        ReviewModel reviewGet = ReviewModel.fromJson(dataRv);
        listReviews.add(reviewGet);
      }).toList();
      setState(() {
        loadReview = true;
      });
    }
  }

  Future<void> getProductOther() async {
    listReviews = [];
    var url = "${Global.hostName}/get_product_other.php?id=$pdId";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((dataPd) {
        ProductViewModel pdOther = ProductViewModel.fromJson(dataPd);
        listPdOther.add(pdOther);
      }).toList();
      setState(() {
        isLoadPdOther = true;
      });
    }
  }

  void updateNum(int count, String status) {
    setState(() {
      numQuan.text = count.toString();
    });
  }

  void updateChoosePrice(int pos) {
    setState(() {
      posPriceMoreChoose = pos;
      priceMainShow =
          "${pdModel.currencySymbol}${formatNum.format(listPriceMore[pos].pdmPrice)}";
    });
  }

  void updatePicMainShow(String picSrc) {
    setState(() {
      picMain = picSrc;
    });
  }

  void updatePageReview(int page) {
    setState(() {
      pageReviewCur = page;
    });
    getReviewProduct();
  }

  @override
  Widget build(BuildContext context) {
    String typeSc1;
    double hbar;
    String uNIT;
    double hfoot;
    String typpro;
    String tyecrop;
    double lP;
    double rP;
    double tP;
    if (Device.width > 991) {
      typeSc1 = "pc";
      hbar = 119;
      uNIT = "pc";
      hfoot = 60;
      typpro = "pc";
      tyecrop = "pc";
      lP = 20;
      rP = 15;
      tP = 15;
    } else if (Device.width >= 768 && Device.width <= 991) {
      typeSc1 = "md";
      hbar = 70;
      uNIT = "mobile";
      hfoot = 0;
      typpro = "mobile";
      tyecrop = "mobile";
      lP = 0;
      rP = 0;
      tP = 10;
    } else if (Device.width >= 576 && Device.width <= 767) {
      typeSc1 = "xm";
      hbar = 70;
      uNIT = "mobile";
      hfoot = 0;
      typpro = "mobile";
      tyecrop = "mobile";
      lP = 0;
      rP = 0;
      tP = 10;
    } else {
      typeSc1 = "xs";
      hbar = 70;
      uNIT = "mobile";
      hfoot = 0;
      typpro = "mobile";
      tyecrop = "mobile";
      lP = 0;
      rP = 0;
      tP = 10;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
        drawer: const Drawermenu(),
        backgroundColor: const Color(0xfff3f3f3),
        body: Stack(
          children: [
            isLoadView
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: hbar),
                        BootstrapContainer(
                            fluid: true,
                            decoration:
                                const BoxDecoration(color: Color(0xfff3f3f3)),
                            children: [
                              uNIT == "pc"
                                  ? showproduct(context, pdModel)
                                  : barshowproductmobile(context, pdModel)
                            ]),
                        BootstrapContainer(
                            fluid: uNIT == "pc" ? false : true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: datashowproduct(
                                    context,
                                    setState,
                                    pdModel,
                                    numQuan,
                                    listpicrMore,
                                    picMain,
                                    updateNum,
                                    updatePicMainShow,
                                    priceMainShow,
                                    listPriceMore,
                                    posPriceMoreChoose,
                                    updateChoosePrice,
                                    listPiceMoreMobile),
                              )
                            ]),
                        BootstrapContainer(
                            fluid: uNIT == "pc" ? false : true,
                            padding: EdgeInsets.only(top: tP),
                            children: [
                              BootstrapRow(
                                children: <BootstrapCol>[
                                  uNIT == "mobile"
                                      ?
                                      // BootstrapCol(
                                      //     child: Padding(
                                      //     padding:
                                      //         const EdgeInsets.only(bottom: 10),
                                      //     child: Column(
                                      //       children: [
                                      //         Container(
                                      //           color: Colors.white,
                                      //           height: 40,
                                      //           width: double.infinity,
                                      //           child: Row(
                                      //             children: [
                                      //               const SizedBox(width: 10),
                                      //               Container(
                                      //                 margin:
                                      //                     const EdgeInsets.only(
                                      //                         top: 7),
                                      //                 child: const Text(
                                      //                   "สินค้าที่เกี่ยวข้อง",
                                      //                   style: TextStyle(
                                      //                     fontSize: 14,
                                      //                   ),
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           ),
                                      //         ),
                                      //         isLoadPdOther
                                      //             ? showlistmobile(
                                      //                 context, listPdOther)
                                      //             : const Center()
                                      //       ],
                                      //     ),
                                      //   ))

                                      BootstrapCol(child: Container())
                                      : BootstrapCol(child: Container()),
                                  BootstrapCol(
                                    sizes:
                                        'col-xl-12 col-lg-12 col-sm-12 col-xs-12 col-md-12',
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: lP, right: rP),
                                      child: Column(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          tyecrop == "pc"
                                                              ? 7
                                                              : 0)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: dataproduct(
                                                    setState, pdModel),
                                              )),
                                          SizedBox(height: tP),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          tyecrop == "pc"
                                                              ? 7
                                                              : 0)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: loadReview
                                                    ? comment(
                                                        context,
                                                        listReviews,
                                                        pageReviewCur,
                                                        maxPageReview,
                                                        updatePageReview,
                                                        startAll,
                                                        rateAll)
                                                    : const Center(),
                                              )),
                                          const SizedBox(height: 30),
                                          isLoadPdOther
                                              ? productother(listPdOther)
                                              : const Center()
                                        ],
                                      ),
                                    ),
                                  ),
                                  // typpro == "pc"
                                  //     ? BootstrapCol(
                                  //         sizes:
                                  //             'col-xl-2 col-lg-3 col-md-12 col-sm-12 col-xs-12',
                                  //         child: Padding(
                                  //           padding: const EdgeInsets.only(
                                  //               right: 20),
                                  //           child: Column(
                                  //             children: [
                                  //               Container(
                                  //                 decoration: const BoxDecoration(
                                  //                     color: Colors.white,
                                  //                     borderRadius:
                                  //                         BorderRadius.only(
                                  //                             topLeft: Radius
                                  //                                 .circular(7),
                                  //                             topRight: Radius
                                  //                                 .circular(
                                  //                                     7))),
                                  //                 height: 50,
                                  //                 width: double.infinity,
                                  //                 child: const Center(
                                  //                     child: Text(
                                  //                   "สินค้าที่เกี่ยวข้อง",
                                  //                   style: TextStyle(
                                  //                       fontSize: 16,
                                  //                       fontFamily:
                                  //                           "Prompt-Medium"),
                                  //                 )),
                                  //               ),
                                  //               datasmallright(),
                                  //               Container(
                                  //                 height: 1,
                                  //                 color: Colors.black12,
                                  //               ),
                                  //               datasmallright(),
                                  //               Container(
                                  //                 height: 1,
                                  //                 color: Colors.black12,
                                  //               ),
                                  //               datasmallright(),
                                  //               Container(
                                  //                 height: 1,
                                  //                 color: Colors.black12,
                                  //               ),
                                  //               datasmallright(),
                                  //             ],
                                  //           ),
                                  //         ))
                                  //     : BootstrapCol(child: Container()),
                                ],
                              )
                            ]),
                        SizedBox(
                          height: hfoot,
                        ),
                        typeSc1 == "pc"
                            ? BootstrapContainer(
                                fluid: true,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 231, 231, 231)),
                                children: <Widget>[barfootterlogin()])
                            : Container()
                      ],
                    ),
                  )
                : const Center(),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(5, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
