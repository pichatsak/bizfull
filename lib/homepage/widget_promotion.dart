import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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

  int _current = 0;
  int _current2 = 0;
  int _current3 = 0;
  final CarouselController _controller = CarouselController();
  final CarouselController _controller2 = CarouselController();
  final CarouselController _controller3 = CarouselController();
  @override
  void initState() {
    super.initState();
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
    if (Device.width > 991) {
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
    }
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
      child: BootstrapRow(
        children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-md-8 col-12 col-sm-12 col-lg-8',
              child: Stack(
                children: [
                  CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          aspectRatio: 10 / 3.3,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList
                          .map((item) => Padding(
                                padding: rdShow1,
                                child: Center(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Image.asset(
                                      item,
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ))
                          .toList()),
                  Positioned(
                    bottom: bSl,
                    left: 0.0,
                    right: 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
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
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
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
                          child: Stack(
                        children: [
                          CarouselSlider(
                              carouselController: _controller2,
                              options: CarouselOptions(
                                  aspectRatio: 5 / 1.53,
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  viewportFraction: 1,
                                  enlargeStrategy:
                                      CenterPageEnlargeStrategy.height,
                                  autoPlayInterval: const Duration(seconds: 7),
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current2 = index;
                                    });
                                  }),
                              items: imgList1
                                  .map(
                                    (item) => Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: SizedBox(
                                        //        height: 115,
                                        width: double.infinity,
                                        child: Image.asset(
                                          item,
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.contain,
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
                              children: imgList1.asMap().entries.map((entry) {
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
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? Colors.white
                                                : Colors.black)
                                            .withOpacity(_current2 == entry.key
                                                ? 0.9
                                                : 0.4)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
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
                              items: imgList1
                                  .map(
                                    (item) => Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: SizedBox(
                                        //     height: 115,
                                        width: double.infinity,
                                        child: Image.asset(
                                          item,
                                          filterQuality: FilterQuality.high,
                                          fit: BoxFit.contain,
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
                              children: imgList1.asMap().entries.map((entry) {
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
