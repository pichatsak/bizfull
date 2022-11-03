// ignore_for_file: must_call_super

import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/slide_model.dart';
import 'package:bizfull/tools/hex_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class SliderTop extends StatefulWidget {
  const SliderTop({Key? key}) : super(key: key);

  @override
  State<SliderTop> createState() => _SliderState();
}

class _SliderState extends State<SliderTop> {
  final box = GetStorage();
  List<int> list = [1, 2, 3, 4, 5];
  List<SlideModel> listSlideMain = [];
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

  final List<Color> clListSlide = [];
  final List<String> clListSlideStr = [];

  int _current = 0;
  final CarouselController _controller = CarouselController();

  late VideoPlayerController controllerVdo;
  bool autoPlaySet = true;
  String urlVdo = "";
  bool isLoadVDO = false;
  bool isLoadSliMain = false;
  late Duration videoLength;
  late Duration videoPosition;
  double volume = 0.5;
  // final _controllerVdo = YoutubePlayerController(
  //   params: const YoutubePlayerParams(
  //     startAt: Duration(seconds: 30),
  //   ),
  // );

  @override
  void initState() {
    getVdoIndex();
    getSlideMain();
    // _controllerVdo.onInit = () {
    //   if (autoPlaySet) {
    //     _controllerVdo.loadVideoById(videoId: 'S-_sNpM9XOY', startSeconds: 30);
    //   } else {
    //     _controllerVdo.cueVideoById(videoId: 'S-_sNpM9XOY', startSeconds: 30);
    //   }
    // };
  }

  Future<void> getSlideMain() async {
    listSlideMain = [];
    var url = "${Global.hostName}/slide_main_get.php?type=main";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        SlideModel getRow = SlideModel.fromJson(data);
        listSlideMain.add(getRow);
        clListSlide.add(HexColor.fromHex(data["sl_color"]));
        clListSlideStr.add(data["sl_color"]);
      }).toList();
      setState(() {
        isLoadSliMain = true;
      });
    }
  }

  Future<void> getVdoIndex() async {
    var url = "${Global.hostName}/vdo_index_get.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      urlVdo = getData['data'];
      controllerVdo = VideoPlayerController.network(
        '${Global.hostVdoIndex}/$urlVdo',
      );
      setVdoStart();
    }
  }

  @override
  void dispose() {
    controllerVdo.dispose();
    super.dispose();
  }

  void setVdoStart() {
    // controllerVdo = VideoPlayerController.network(
    //   '${Global.hostVdoIndex}/$urlVdo',
    // )
    //   ..addListener(() => setState(() {
    //         videoPosition = controllerVdo.value.position;
    //       }))
    //   ..initialize().then((_) {
    //     setState(() {
    //       videoLength = controllerVdo.value.duration;
    //       isLoadVDO = true;
    //     });
    //   })
    //   ..seekTo(Duration(seconds: 2))
    //   ..play();
    controllerVdo.addListener(() => setState(() {
          videoPosition = controllerVdo.value.position;
        }));

    controllerVdo.initialize().then((_) {
      setState(() {
        videoLength = controllerVdo.value.duration;
        isLoadVDO = true;
      });
    });
  }

  void setNewColor(index) {
    // box.write("colorNav", clList[index]);
    box.write("colorNav", clListSlideStr[index]);
    // if (index == 0) {
    //   box.write("colorNav", clListSlide[index]);
    // } else if (index == 1) {
    //   box.write("colorNav", "#ee4e2e");
    // } else if (index == 2) {
    //   box.write("colorNav", "#0593f9");
    // } else if (index == 3) {
    //   box.write("colorNav", "#08090b");
    // } else if (index == 4) {
    //   box.write("colorNav", "#131313");
    // } else if (index == 5) {
    //   box.write("colorNav", "#ffd2d9");
    // } else if (index == 6) {
    //   box.write("colorNav", "#608bcf");
    // } else if (index == 7) {
    //   box.write("colorNav", "#608bcf");
    // } else if (index == 8) {
    //   box.write("colorNav", "#20baee");
    // }

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
                  isLoadSliMain
                      ? CarouselSlider(
                          options: CarouselOptions(
                              aspectRatio: ratosl,
                              autoPlay: true,
                              // enlargeCenterPage: true,
                              viewportFraction: 1,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                              onPageChanged: (index, reason) {
                                setNewColor(index);
                              }),
                          items: listSlideMain
                              .map((item) => Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 5, left: pdSl, right: pdSl),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        typeDv == "mobile"
                                            ? Container(
                                                height: 66,
                                                color: clList[listSlideMain
                                                    .indexOf(item)],
                                              )
                                            : const SizedBox(
                                                height: 0,
                                              ),
                                        SizedBox(
                                            width: double.infinity,
                                            child:
                                                // Image.network(
                                                //   '${Global.hostImgSlide}/${item.slPic}',
                                                //   filterQuality: FilterQuality.high,
                                                //   fit: BoxFit.contain,
                                                // ),
                                                InkWell(
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
                                                filterQuality:
                                                    FilterQuality.high,
                                                fit: BoxFit.contain,
                                              ),
                                            )),
                                      ],
                                    ),
                                  ))
                              .toList())
                      : const SizedBox(
                          height: 0,
                        ),
                  isLoadSliMain
                      ? Positioned(
                          bottom: bSl,
                          left: 0.0,
                          right: 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                listSlideMain.asMap().entries.map((entry) {
                              return InkWell(
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
                      : const SizedBox(
                          height: 0,
                        ),
                ],
              )),
          BootstrapCol(
              sizes: 'col-md-12  col-12 col-sm-12 col-lg-4',
              child: Padding(
                padding: rdShow,
                child: Center(
                  child: isLoadVDO
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                    width: double.infinity,
                                    child: AspectRatio(
                                        aspectRatio: 5 / 3.04,
                                        child: VideoPlayer(controllerVdo))
                                    // YoutubePlayerIFrame(
                                    //   controller: _controllerVdo,
                                    //   aspectRatio: 5 / 3.04,
                                    // ),
                                    ),
                                Positioned.fill(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: !controllerVdo.value.isPlaying
                                          ? IconButton(
                                              icon: const Icon(
                                                Icons.play_arrow,
                                                color: Color(0xffaa1f2e),
                                                size: 50,
                                              ),
                                              onPressed: () => setState(
                                                () {
                                                  controllerVdo.play();
                                                },
                                              ),
                                            )
                                          : IconButton(
                                              icon: const Icon(Icons.pause,
                                                  color: Color(0xffaa1f2e),
                                                  size: 50),
                                              onPressed: () => setState(
                                                () {
                                                  controllerVdo.pause();
                                                },
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : const Center(),
                ),
              )),
        ],
      ),
    );
  }
}

String convertToMinutesSeconds(Duration duration) {
  final parsedMinutes = duration.inMinutes % 60;

  final minutes =
      parsedMinutes < 10 ? '0$parsedMinutes' : parsedMinutes.toString();

  final parsedSeconds = duration.inSeconds % 60;

  final seconds =
      parsedSeconds < 10 ? '0$parsedSeconds' : parsedSeconds.toString();

  return '$minutes:$seconds';
}

IconData animatedVolumeIcon(double volume) {
  if (volume == 0) {
    return Icons.volume_mute;
  } else if (volume < 0.5) {
    return Icons.volume_down;
  } else {
    return Icons.volume_up;
  }
}
