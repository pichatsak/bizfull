import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/slide_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class SliderBanner extends StatefulWidget {
  const SliderBanner({Key? key}) : super(key: key);

  @override
  State<SliderBanner> createState() => _SliderBannerState();
}

class _SliderBannerState extends State<SliderBanner> {
  List<int> list = [0, 1, 2, 3, 4, 5, 6, 7];
  final List<String> imgList = [
    "images/slider.jpg",
    "images/sl1.jpg",
    "images/sl2.jpg",
    "images/sl3.jpg",
    "images/sl4.jpg",
    "images/sl5.jpg",
    "images/sl6.jpg",
    "images/sl7.jpg",
  ];
  List<int> list1 = [1, 2, 3, 4];
  final List<String> imgList1 = [
    "images/5.jpg",
    "images/4.jpg",
    "images/c1.jpg",
    "images/c2.jpg",
  ];

  bool isLoadSliMainSub = false;
  List<SlideModel> listSlideMainSub = [];

  bool isLoadSliSub1 = false;
  List<SlideModel> listSlideSub1 = [];

  bool isLoadSliSub2 = false;
  List<SlideModel> listSlideSub2 = [];

  int _current = 0;
  int _current2 = 0;
  int _current3 = 0;
  final CarouselController _controller = CarouselController();
  final CarouselController _controller2 = CarouselController();
  final CarouselController _controller3 = CarouselController();
  @override
  void initState() {
    super.initState();
    getSlideMain();
    getSlideSub1();
    getSlideSub2();
  }

  Future<void> getSlideMain() async {
    listSlideMainSub = [];
    var url = "${Global.hostName}/slide_main_get.php?type=main";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        SlideModel getRow = SlideModel.fromJson(data);
        listSlideMainSub.add(getRow);
      }).toList();
      setState(() {
        isLoadSliMainSub = true;
      });
    }
  }

  Future<void> getSlideSub1() async {
    listSlideSub1 = [];
    var url = "${Global.hostName}/slide_main_get.php?type=sub1";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        SlideModel getRow = SlideModel.fromJson(data);
        listSlideSub1.add(getRow);
      }).toList();
      setState(() {
        isLoadSliSub1 = true;
      });
    }
  }

  Future<void> getSlideSub2() async {
    listSlideSub2 = [];
    var url = "${Global.hostName}/slide_main_get.php?type=sub2";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        SlideModel getRow = SlideModel.fromJson(data);
        listSlideSub2.add(getRow);
      }).toList();
      setState(() {
        isLoadSliSub2 = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets rdShow;
    EdgeInsets rdShow1;
    double bSl;
    double sSl;
    double hSl;
    double bSl1;
    double sSl1;
    double hSl1;
    double bSl2;
    double sSl2;
    double hSl2;
    double aR;
    double aRM;
    double mT;
    double pT;
    if (Device.width > 1240) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 5, right: 5, top: 12.4);
      rdShow1 = const EdgeInsets.only(left: 5, bottom: 0, right: 0, top: 0);
      bSl = 15;
      sSl = 12;
      hSl = 4;
      bSl1 = 3;
      sSl1 = 10;
      hSl1 = 4;
      bSl2 = 3;
      sSl2 = 10;
      hSl2 = 4;
      aR = 5 / 1.53;
      aRM = 10 / 3.3;
      mT = 0;
      pT = 20;
    } else if (Device.width >= 992 && Device.width <= 1240) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 5, right: 5, top: 12.4);
      rdShow1 = const EdgeInsets.only(left: 5, bottom: 0, right: 0, top: 0);
      bSl = 15;
      sSl = 12;
      hSl = 4;
      bSl1 = 3;
      sSl1 = 10;
      hSl1 = 4;
      bSl2 = 3;
      sSl2 = 10;
      hSl2 = 4;
      aR = 5 / 1.53;
      aRM = 10 / 3.3;
      mT = 0;
      pT = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 5, right: 5, top: 5);
      rdShow1 = const EdgeInsets.only(left: 5, bottom: 5, right: 0, top: 0);
      bSl = 15;
      sSl = 10;
      hSl = 4;
      bSl1 = 1;
      sSl1 = 7;
      hSl1 = 3;
      bSl2 = 1;
      sSl2 = 7;
      hSl2 = 3;
      aR = 5 / 1.53;
      aRM = 10 / 3.3;
      mT = 0;
      pT = 10;
    } else {
      rdShow = const EdgeInsets.only(left: 5, bottom: 5, right: 5, top: 0);
      rdShow1 = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0);
      bSl = 11;
      sSl = 8;
      hSl = 3;
      bSl1 = 3;
      sSl1 = 8;
      hSl1 = 3;
      bSl2 = 3;
      sSl2 = 8;
      hSl2 = 3;
      aR = 5 / 1.53;
      aRM = 10 / 3.3;
      mT = 0;
      pT = 10;
    }
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5, top: pT),
      child: BootstrapRow(
        children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-md-8 col-12 col-sm-12 col-lg-8',
              child: Stack(
                children: [
                  isLoadSliMainSub
                      ? CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                              aspectRatio: aRM,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              viewportFraction: 1,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          items: listSlideMainSub
                              .map((item) => Padding(
                                    padding: rdShow1,
                                    child: Center(
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: InkWell(
                                          onTap: () {
                                            if (item.slLinkStatus == "on") {
                                              js.context.callMethod(
                                                  'open', [item.slLink]);
                                            }
                                          },
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "${Global.hostImgSlide}/${item.slPic}",
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            filterQuality: FilterQuality.high,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .toList())
                      : const Center(),
                  isLoadSliMainSub
                      ? Positioned(
                          bottom: bSl,
                          left: 0.0,
                          right: 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                listSlideMainSub.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  width: sSl,
                                  height: sSl,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: hSl),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.black)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      : const Center(),
                  // Positioned.fill(
                  //   child: Align(
                  //     alignment: Alignment.center,
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: <Widget>[
                  //         Padding(
                  //           padding: const EdgeInsets.only(left: 10),
                  //           child: Flexible(
                  //             child: ElevatedButton(
                  //               onPressed: () => _controller.previousPage(),
                  //               child: Text('←'),
                  //             ),
                  //           ),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.only(right: 5),
                  //           child: Flexible(
                  //             child: ElevatedButton(
                  //               onPressed: () => _controller.nextPage(),
                  //               child: Text('→'),
                  //             ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              )),
          BootstrapCol(
              sizes: 'col-md-4  col-12 col-sm-12 col-lg-4',
              child: Padding(
                  padding: rdShow,
                  child: BootstrapRow(
                    children: <BootstrapCol>[
                      BootstrapCol(
                          child: Container(
                        margin: EdgeInsets.only(top: mT),
                        child: Stack(
                          children: [
                            CarouselSlider(
                                carouselController: _controller2,
                                options: CarouselOptions(
                                    aspectRatio: aR,
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    viewportFraction: 1,
                                    enlargeStrategy:
                                        CenterPageEnlargeStrategy.height,
                                    autoPlayInterval:
                                        const Duration(seconds: 7),
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current2 = index;
                                      });
                                    }),
                                items: listSlideSub1
                                    .map(
                                      (item) => Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 2),
                                        child: SizedBox(
                                          //        height: 115,
                                          width: double.infinity,
                                          child: InkWell(
                                            onTap: () {
                                              if (item.slLinkStatus == "on") {
                                                js.context.callMethod(
                                                    'open', [item.slLink]);
                                              }
                                            },
                                            child: CachedNetworkImage(
                                              imageUrl:
                                                  "${Global.hostImgSlide}/${item.slPic}",
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                              filterQuality: FilterQuality.high,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList()),
                            Positioned(
                              bottom: bSl1,
                              left: 0.0,
                              right: 0.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    listSlideSub1.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _controller2.animateToPage(entry.key),
                                    child: Container(
                                      width: sSl1,
                                      height: sSl1,
                                      margin: EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: hSl1),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              (Theme.of(context).brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : Colors.black)
                                                  .withOpacity(
                                                      _current2 == entry.key
                                                          ? 0.9
                                                          : 0.4)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      )),
                      BootstrapCol(
                          child: Stack(
                        children: [
                          CarouselSlider(
                              carouselController: _controller3,
                              options: CarouselOptions(
                                  aspectRatio: 5 / 1.54,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  viewportFraction: 1,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.height,
                                  autoPlayInterval: const Duration(seconds: 10),
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current3 = index;
                                    });
                                  }),
                              items: listSlideSub2
                                  .map(
                                    (item) => Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: SizedBox(
                                        //     height: 115,
                                        width: double.infinity,
                                        child: InkWell(
                                          onTap: () {
                                            if (item.slLinkStatus == "on") {
                                              js.context.callMethod(
                                                  'open', [item.slLink]);
                                            }
                                          },
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "${Global.hostImgSlide}/${item.slPic}",
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            filterQuality: FilterQuality.high,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList()),
                          Positioned(
                            bottom: bSl2,
                            left: 0.0,
                            right: 0.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                                  listSlideSub2.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller3.animateToPage(entry.key),
                                  child: Container(
                                    width: sSl2,
                                    height: sSl2,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: hSl2),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : Colors.black)
                                            .withOpacity(_current3 == entry.key
                                                ? 0.9
                                                : 0.4)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ))),
        ],
      ),
    );
  }
}
