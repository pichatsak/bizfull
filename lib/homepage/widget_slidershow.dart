// ignore_for_file: must_call_super

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/tools/hex_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SliderTop extends StatefulWidget {
  const SliderTop({Key? key}) : super(key: key);

  @override
  State<SliderTop> createState() => _SliderState();
}

class _SliderState extends State<SliderTop> {
  final box = GetStorage();
  List<int> list = [1, 2, 3, 4, 5];
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
  final List<Color> clList = [
    const Color(0xfff298b4),
    const Color(0xffee4e2e),
    const Color(0xff0593f9),
    const Color(0xff08090b),
    const Color(0xff131313),
    const Color(0xffffd2d9),
    const Color(0xff608bcf),
    const Color(0xff20baee),
  ];

  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool autoPlaySet = true;
  final _controllerVdo = YoutubePlayerController(
    params: const YoutubePlayerParams(
      startAt: Duration(seconds: 30),
      autoPlay: true,
    ),
  );

  @override
  void initState() {
    _controllerVdo.onInit = () {
      if (autoPlaySet) {
        _controllerVdo.loadVideoById(videoId: 'S-_sNpM9XOY', startSeconds: 30);
      } else {
        _controllerVdo.cueVideoById(videoId: 'S-_sNpM9XOY', startSeconds: 30);
      }
    };
  }

  void setNewColor(index) {
    // box.write("colorNav", clList[index]);
    if (index == 0) {
      box.write("colorNav", "#f298b4");
    } else if (index == 1) {
      box.write("colorNav", "#ee4e2e");
    } else if (index == 2) {
      box.write("colorNav", "#0593f9");
    } else if (index == 3) {
      box.write("colorNav", "#08090b");
    } else if (index == 4) {
      box.write("colorNav", "#131313");
    } else if (index == 5) {
      box.write("colorNav", "#ffd2d9");
    } else if (index == 6) {
      box.write("colorNav", "#608bcf");
    } else if (index == 7) {
      box.write("colorNav", "#608bcf");
    } else if (index == 8) {
      box.write("colorNav", "#20baee");
    }

    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets rdShow;
    double bSl;
    double sSl;
    double hSl;
    double pdSl = 5;
    String typeDv = "pc";
    double ratosl = 5 / 1.6;
    if (Device.width > 991) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 5.92);
      bSl = 15;
      sSl = 12;
      hSl = 4;
      pdSl = 5;
      typeDv = "pc";
      ratosl = 5 / 1.6;
    } else if (Device.width >= 768 && Device.width <= 991) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0);
      bSl = 15;
      sSl = 10;
      hSl = 4;
      pdSl = 0;
      typeDv = "mobile";
      ratosl = 2.47;
    } else {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0);
      bSl = 11;
      sSl = 8;
      hSl = 3;
      pdSl = 0;
      typeDv = "mobile";
      ratosl = 2.11;
    }
    return Padding(
      padding: EdgeInsets.only(left: pdSl, right: pdSl),
      child: BootstrapRow(
        children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-md-12 col-12 col-sm-12 col-lg-8',
              child: Stack(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                          aspectRatio: ratosl,
                          autoPlay: true,
                          // enlargeCenterPage: true,
                          viewportFraction: 1,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                          onPageChanged: (index, reason) {
                            setNewColor(index);
                          }),
                      items: imgList
                          .map((item) => Padding(
                                padding: EdgeInsets.only(
                                    bottom: 5, left: pdSl, right: pdSl),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    typeDv == "mobile"
                                        ? Container(
                                            height: 66,
                                            color:
                                                clList[imgList.indexOf(item)],
                                          )
                                        : const SizedBox(
                                            height: 0,
                                          ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Image.asset(
                                        item,
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
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
                ],
              )),
          BootstrapCol(
              sizes: 'col-md-12  col-12 col-sm-12 col-lg-4',
              child: Padding(
                padding: rdShow,
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: YoutubePlayerIFrame(
                      controller: _controllerVdo,
                      aspectRatio: 5 / 3.04,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
