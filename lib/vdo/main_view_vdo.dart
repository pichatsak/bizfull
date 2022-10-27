import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/models/vdo_recom_model.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:bizfull/vdo/widget_bar_vdo_view.dart';
import 'package:bizfull/vdo/widget_bar_vdo_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';

class VdoViewPage extends StatefulWidget {
  final String idGet;
  const VdoViewPage({Key? key, required this.idGet}) : super(key: key);

  @override
  State<VdoViewPage> createState() => _VdoViewPageState();
}

class _VdoViewPageState extends State<VdoViewPage> {
  final box = GetStorage();
  late VdoRecomModel itemData;
  bool isLoad = false;
  late Duration videoLength;
  late Duration videoPosition;
  double volume = 0.5;
  String id = "";
  late VideoPlayerController _controller;
  @override
  void initState() {
    box.write("curpage", "internationalshipping");
    super.initState();
    id = widget.idGet;
    getColumsView();
  }

  Future<void> getColumsView() async {
    var url = "${Global.hostName}/get_vdo.php?id=$id";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      itemData = VdoRecomModel.fromJson(getData["data"]);
      setVdoStart();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void setVdoStart() {
    _controller = VideoPlayerController.network(
      '${Global.hostVdo}/${itemData.vdorSrc}',
    )
      ..addListener(() => setState(() {
            videoPosition = _controller.value.position;
          }))
      ..initialize().then((_) {
        setState(() {
          videoLength = _controller.value.duration;
          isLoad = true;
        });
      });
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
                  isLoad
                      ? BootstrapContainer(
                          fluid: true,
                          decoration:
                              const BoxDecoration(color: Color(0xfff3f3f3)),
                          children: [
                              typeSc == "pc"
                                  ? barVdoView(context, itemData, isLoad)
                                  : barVdoViewMobile(context)
                            ])
                      : const Center(),
                  BootstrapContainer(
                    fluid: typeSc == "pc" ? false : true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      isLoad
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10),
                              child: BootstrapRow(children: <BootstrapCol>[
                                BootstrapCol(
                                    sizes: 'col-12',
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 11),
                                            child: const Icon(
                                              FontAwesomeIcons.video,
                                              color: Color(0xffa91f2e),
                                              size: 25,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Flexible(
                                            child: Text(
                                              // "บทความ",
                                              itemData.vdorTitle,
                                              style: TextStyle(
                                                  fontSize:
                                                      typeSc == "pc" ? 32 : 18,
                                                  fontFamily: "Prompt-Medium"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ]),
                            )
                          : const Center(),
                      isLoad
                          ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: AspectRatio(
                                      aspectRatio:
                                          _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller)),
                                ),
                                VideoProgressIndicator(
                                  _controller,
                                  allowScrubbing: true,
                                  padding: const EdgeInsets.all(10),
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(
                                        _controller.value.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                      ),
                                      onPressed: () => setState(
                                        () {
                                          _controller.value.isPlaying
                                              ? _controller.pause()
                                              : _controller.play();
                                        },
                                      ),
                                    ),
                                    Text(
                                        '${convertToMinutesSeconds(videoPosition)} / ${convertToMinutesSeconds(videoLength)}'),
                                    const SizedBox(width: 10),
                                    Icon(animatedVolumeIcon(volume)),
                                    Slider(
                                        value: volume,
                                        min: 0,
                                        max: 1,
                                        onChanged: (changedVolume) {
                                          setState(() {
                                            volume = changedVolume;
                                            _controller
                                                .setVolume(changedVolume);
                                          });
                                        }),
                                    const Spacer(),
                                    IconButton(
                                        icon: Icon(Icons.loop,
                                            color: _controller.value.isLooping
                                                ? Colors.green
                                                : Colors.black),
                                        onPressed: () {
                                          _controller.setLooping(
                                              !_controller.value.isLooping);
                                        })
                                  ],
                                )
                              ],
                            )
                          : const Center(),
                      const SizedBox(
                        height: 200,
                      )
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
