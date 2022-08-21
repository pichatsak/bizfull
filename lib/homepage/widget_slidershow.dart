// ignore_for_file: must_call_super

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class SliderTop extends StatefulWidget {
  const SliderTop({Key? key}) : super(key: key);

  @override
  State<SliderTop> createState() => _SliderState();
}

class _SliderState extends State<SliderTop> {
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
  int _current = 0;
  final CarouselController _controller = CarouselController();
  bool autoPlaySet = false;
  final _controllerVdo = YoutubePlayerController(
    params: const YoutubePlayerParams(
      startAt: Duration(seconds: 30),
      autoPlay: false,
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

  @override
  Widget build(BuildContext context) {
    EdgeInsets rdShow;
    double bSl;
    double sSl;
    double hSl;
    if (Device.width > 991) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 5.92);
      bSl = 15;
      sSl = 12;
      hSl = 4;
    } else if (Device.width >= 768 && Device.width <= 991) {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0);
      bSl = 15;
      sSl = 10;
      hSl = 4;
    } else {
      rdShow = const EdgeInsets.only(left: 5, bottom: 0, right: 5, top: 0);
      bSl = 11;
      sSl = 8;
      hSl = 3;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: BootstrapRow(
        children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-md-12 col-12 col-sm-12 col-lg-8',
              child: Stack(
                children: [
                  CarouselSlider(
                      options: CarouselOptions(
                          aspectRatio: 5 / 1.6,
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
                                padding: const EdgeInsets.only(
                                    bottom: 5, left: 5, right: 5),
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
