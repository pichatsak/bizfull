import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/chat/chatmobile/widget_bar_chatmobile.dart';
import 'package:bizfull/chat/chatmobile/widget_datachat0.dart';
import 'package:bizfull/chat/chatmobile/widget_barcomment.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Chatmobile extends StatefulWidget {
  const Chatmobile({Key? key}) : super(key: key);

  @override
  State<Chatmobile> createState() => _ChatmobileState();
}

class _ChatmobileState extends State<Chatmobile> {
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "chatmobile");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    double h;
    if (Device.width > 991) {
      hbar = 119;
      pad = 25;
      h = 70;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 0;
      h = 30;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 0;
      h = 30;
    } else {
      hbar = 70;
      pad = 0;
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
                  BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: [barchatmobile(context)]),
                  BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.only(top: pad),
                    children: [datachat0()],
                  ),
                  SizedBox(height: h),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: barcomment(),
            ),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(2, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
