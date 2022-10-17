import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final CarouselController _controller1 = CarouselController();
List<int> list = [1, 2, 3, 4];

Widget picture() {
  String typeSc;
  double w;
  double rP;
  double lP;
  double tP;
  if (Device.width > 991) {
    typeSc = "pc";
    w = 495;
    rP = 10;
    lP = 20;
    tP = 20;
  } else if (Device.width >= 768 && Device.width <= 991) {
    typeSc = "tablet";
    w = 450;
    rP = 20;
    lP = 20;
    tP = 10;
  } else if (Device.width >= 576 && Device.width <= 767) {
    typeSc = "tablet"; //sm
    w = 450; //343
    rP = 10;
    lP = 10;
    tP = 20;
  } else {
    typeSc = "mobile";
    w = double.infinity; //343
    rP = 5;
    lP = 5;
    tP = 5;
  }

  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-12',
      child: Padding(
        padding: EdgeInsets.only(top: tP, left: lP, right: rP, bottom: 0),
        child: Center(
          child: SizedBox(
              width: w,
              child: Column(
                children: [
                  if (typeSc == "pc") ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(7.0),
                      child: Image.asset(
                        "images/a1.jpg",
                        fit: BoxFit.cover,
                      ),
                    )
                  ] else if (typeSc == "tablet") ...[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.asset(
                        "images/a1.jpg",
                        fit: BoxFit.cover,
                        // width: w,
                        // height: h,
                      ),
                    ),
                  ] else if (typeSc == "mobile") ...[
                    Stack(
                      children: [
                        CarouselSlider(
                          carouselController: _controller1,
                          options: CarouselOptions(
                            enableInfiniteScroll: false,
                            pageSnapping: true,
                            disableCenter: true,
                            padEnds: false,
                            aspectRatio: 1,
                            autoPlay: false,
                            enlargeCenterPage: true,
                            // scrollPhysics: cE == "pc"
                            //     ? const NeverScrollableScrollPhysics()
                            //     : null,
                            viewportFraction: 1,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                          ),
                          items: list.map((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  padding:
                                      const EdgeInsets.only(right: 5, left: 5),
                                  child: Center(
                                    child: SizedBox(
                                      width: double.infinity,
                                      //  height: 400,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.asset(
                                          "images/a1.jpg",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Flexible(
                                      child: InkWell(
                                          onTap: () =>
                                              _controller1.previousPage(),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 3),
                                            child: const Icon(
                                              FontAwesomeIcons.chevronLeft,
                                              color: Colors.white,
                                            ),
                                          ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Flexible(
                                      child: InkWell(
                                          onTap: () => _controller1.nextPage(),
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 3),
                                            child: const Icon(
                                              FontAwesomeIcons.chevronRight,
                                              color: Colors.white,
                                            ),
                                          ))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, bottom: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 15, right: 15),
                                  child: Text("1/4"),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ],
              )),
        ),
      ),
    )
  ]);
}

final CarouselController _controller = CarouselController();
Widget smallunderpicture() {
  double n;
  double mP;
  double tP;
  double rP;
  double lP;
  double wP;
  String cE;
  double bP;
  String typE;
  if (Device.width > 1240) {
    n = 91;
    mP = 8;
    tP = 7;
    rP = 2;
    wP = double.infinity;
    cE = "pc";
    bP = 20;
    lP = 20;
    typE = "model";
  } else if (Device.width >= 992 && Device.width <= 1240) {
    n = 85;
    mP = 7;
    tP = 6;
    rP = 3;
    wP = double.infinity;
    cE = "pc";
    bP = 0;
    lP = 20;
    typE = "model";
  } else if (Device.width >= 768 && Device.width <= 991) {
    n = 80;
    mP = 8;
    tP = 10;
    rP = 12;
    wP = 460;
    cE = "mobile";
    bP = 30;
    lP = 20;
    typE = "model";
  } else if (Device.width >= 576 && Device.width <= 767) {
    n = 80; //63//sm
    mP = 8;
    tP = 10;
    rP = 2;
    wP = 460; //370
    cE = "mobile";
    bP = 20;
    lP = 10;
    typE = "model";
  } else {
    n = 100; //63
    mP = 8;
    tP = 10;
    rP = 2;
    wP = double.infinity; //370
    cE = "mobile";
    bP = 0;
    lP = 10;
    typE = "mobile";
  }
  return typE == "model"
      ? Padding(
          padding: EdgeInsets.only(left: lP, right: rP, bottom: bP, top: tP),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox(
                  // color: Colors.green,
                  width: wP,
                  child: Stack(
                    children: [
                      CarouselSlider(
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: n,
                          enableInfiniteScroll: false,
                          pageSnapping: true,
                          disableCenter: true,
                          padEnds: false,
                          // aspectRatio: 16/100,
                          autoPlay: false,
                          enlargeCenterPage: true,
                          scrollPhysics: cE == "pc"
                              ? const NeverScrollableScrollPhysics()
                              : null,
                          viewportFraction: 0.2,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                        items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: i == 1
                                    ? EdgeInsets.only(right: mP)
                                    : EdgeInsets.only(right: mP),
                                //  decoration: const BoxDecoration(color: Colors.white),
                                child:
                                    // Text(
                                    //   'text $i',
                                    //   style: const TextStyle(fontSize: 16.0),
                                    // )
                                    Center(
                                  child: SizedBox(
                                    width: n,
                                    //  height: n,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(4.0),
                                      child: Image.asset(
                                        "images/data.png",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Flexible(
                                    child: InkWell(
                                        onTap: () => _controller.previousPage(),
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 3),
                                          child: const Icon(
                                            FontAwesomeIcons.chevronLeft,
                                            color: Colors.white,
                                          ),
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Flexible(
                                    child: InkWell(
                                        onTap: () => _controller.nextPage(),
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 3),
                                          child: const Icon(
                                            FontAwesomeIcons.chevronRight,
                                            color: Colors.white,
                                          ),
                                        ))),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Center(
          //   child: Container(
          //     height: n,
          //     width: 495,
          //     decoration: const BoxDecoration(color: Colors.white),
          //     child: Padding(
          //       padding: const EdgeInsets.all(0),
          //       child: ListView(
          //         scrollDirection: Axis.horizontal,
          //         children: <Widget>[
          //           ...List.generate(10, (index) {
          //             return SizedBox(
          //               width: n,
          //               child: Padding(
          //                 padding: index == 0
          //                     ? const EdgeInsets.only(
          //                         left: 0, top: 5, right: 5, bottom: 5)
          //                     : const EdgeInsets.only(
          //                         left: 5, top: 5, right: 5, bottom: 5),
          //                 child: Center(
          //                   child: SizedBox(
          //                     width: n,
          //                     height: n,
          //                     // decoration: BoxDecoration(
          //                     //     border: Border.all(
          //                     //         color: const Color(0xffed3023), width: 2)),
          //                     child: ClipRRect(
          //                       borderRadius: BorderRadius.circular(0.0),
          //                       child: Image.asset(
          //                         "images/a2.jpg",
          //                         fit: BoxFit.cover,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             );
          //           })
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // child: BootstrapRow(children: <BootstrapCol>[
          //   BootstrapCol(
          //     sizes: 'col-3',
          //     child: Padding(
          //       padding: const EdgeInsets.all(5.0),
          //       child: Center(
          //         child: Container(
          //           width: 82,
          //           height: 82,
          //           decoration: BoxDecoration(
          //               border: Border.all(color: const Color(0xffed3023), width: 2)),
          //           child: Image.asset(
          //             "images/a2.jpg",
          //             fit: BoxFit.contain,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          //   BootstrapCol(
          //     sizes: 'col-3',
          //     child: Padding(
          //       padding: const EdgeInsets.all(5.0),
          //       child: Image.asset(
          //         "images/a3.jpg",
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          //   BootstrapCol(
          //     sizes: 'col-3',
          //     child: Padding(
          //       padding: const EdgeInsets.all(5.0),
          //       child: Image.asset(
          //         "images/a4.jpg",
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          //   BootstrapCol(
          //     sizes: 'col-3',
          //     child: Padding(
          //       padding: const EdgeInsets.all(5.0),
          //       child: Image.asset(
          //         "images/a5.jpg",
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          // ]),
        )
      : Container();
}
