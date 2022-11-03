import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/contact_model.dart';
import 'package:bizfull/nav/box_shap_menu.dart';
import 'package:bizfull/nav/hover_menu.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ionicons/ionicons.dart';
import 'package:joy_dropdowns/joy_dropdowns.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:http/http.dart' as http;
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

@immutable
class NavDeskTop extends StatefulWidget {
  const NavDeskTop({Key? key}) : super(key: key);

  @override
  State<NavDeskTop> createState() => _NavDeskTopState();
}

class _NavDeskTopState extends State<NavDeskTop> {
  bool isHoverMenu1 = false;
  late ContactModel itemData;
  bool isLoad = false;
  final box = GetStorage();
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
    getDataContact();
    checkLogin();
  }

  void checkLogin() {
    bool loginGet = box.read("login") ?? false;
    isLogin = loginGet;
    if (isLogin) {
      setState(() {
        isLogin = true;
      });
    }
  }

  Future<void> getDataContact() async {
    var url = "${Global.hostName}/contact_get.php";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      itemData = ContactModel.fromJson(getData["data"]);
      setState(() {
        isLoad = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    return Column(
      children: [
        BootstrapContainer(fluid: true, children: <Widget>[
          BootstrapRow(children: <BootstrapCol>[
            BootstrapCol(
                invisibleForSizes: ' md  sm xs',
                sizes: 'col-12',
                child: Shimmer(
                  duration: const Duration(seconds: 5),
                  interval: const Duration(seconds: 2),
                  color: Colors.white,
                  colorOpacity: 0.5,
                  enabled: true,
                  direction: const ShimmerDirection.fromLTRB(),
                  child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("images/b_nav.png"),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      )),
                      child:
                          BootstrapContainer(fluid: false, children: <Widget>[
                        BootstrapRow(
                          children: <BootstrapCol>[
                            BootstrapCol(
                              sizes: 'col-12',
                              child: SizedBox(
                                height: 119,
                                child: Column(
                                  children: [
                                    getMenuTop(),
                                    getMenuMiddle(),
                                    getMenuBottom()
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ])),
                ))
          ])
        ]),
      ],
    );
  }

  Widget getMenuTop() {
    double w;
    if (Device.width > 1240) {
      w = 63;
    } else if (Device.width >= 992 && Device.width <= 1240) {
      w = 35;
    } else if (Device.width >= 768 && Device.width <= 991) {
      w = 63;
    } else {
      w = 63;
    }
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(children: [
              const Text(
                "ติดตามเรา",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [itemData.ctFacebook]);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: const Icon(
                    FontAwesomeIcons.facebook,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 9),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [itemData.ctInsta]);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: const Icon(
                    FontAwesomeIcons.instagram,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 9),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [itemData.ctLine]);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: const Icon(
                    FontAwesomeIcons.line,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/delively");
                },
                child: Row(
                  children: const [
                    // Icon(FontAwesomeIcons.circleQuestion,
                    //     size: 20, color: Colors.white),
                    // SizedBox(width: 5),
                    // Text("ช่วยเหลือ",
                    //     style: TextStyle(color: Colors.white, fontSize: 13)),
                    // SizedBox(width: 35),
                    // SvgPicture.asset(
                    //   "images/car.svg",
                    //   color: Colors.white,
                    //   width: 20,
                    // ),
                    Icon(
                      // LineIcons.shipping_fast,
                      FontAwesomeIcons.truckFast,
                      size: 14,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "ติดตามสถานะ",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(width: w),
              Container(
                margin: const EdgeInsets.only(bottom: 3.5),
                child: const Icon(
                  FontAwesomeIcons.bagShopping,
                  size: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/shopcart");
                },
                child: const Text("สินค้าน่าชิป สินค้าน่าช้อป",
                    style: TextStyle(color: Colors.white, fontSize: 13)),
              ),
              SizedBox(width: w),
              const Icon(
                FontAwesomeIcons.solidBell,
                size: 14,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  "การแจ้งเตือน",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              SizedBox(width: w),
              const Icon(
                FontAwesomeIcons.solidCircleUser,
                size: 14,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              isLogin
                  ? InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("/profile");
                      },
                      child: const Text(
                        "บัญชีของฉัน",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    )
                  : Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/login");
                          },
                          child: const Text(
                            "เข้าสู่ระบบ",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                        const Text(
                          " / ",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("/registor");
                          },
                          child: const Text(
                            "สมัครสมาชิก",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                    )
            ],
          )
        ],
      ),
    );
  }

  Widget getMenuMiddle() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 20, top: 5),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/");
            },
            child: SizedBox(
                width: 185,
                height: 55,
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset("images/loconew.png",
                      fit: BoxFit.contain, filterQuality: FilterQuality.high),
                )),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 10, right: 20),
                    hintText:
                        'ค้นหา สินค้าและบริการ รวมถึงข้อมูลต่างๆของบิซฟูล ที่นี่',
                    hintStyle:
                        const TextStyle(color: Colors.black54, fontSize: 15),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffa91f2e)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              FontAwesomeIcons.magnifyingGlass,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getMenuBottom() {
    double w1;
    if (Device.width > 1240) {
      w1 = 108;
    } else if (Device.width >= 992 && Device.width <= 1240) {
      w1 = 87.5;
    } else if (Device.width >= 768 && Device.width <= 991) {
      w1 = 108;
    } else {
      w1 = 108;
    }
    return Padding(
      // padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 6, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Row(
            children: [
              JoyDropDown(
                overlayHeight: 120,
                overlayWidth: 240,
                overlayOffset: const Offset(0, 0),
                overlayPosition: JoyOverlayPosition.bottom,
                overlayWidget: ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 250),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: BoxShapMenu(),
                      shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 102, 102, 102),
                            blurRadius: 6.0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView(
                          children: [
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/about");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    Ionicons.information_circle_outline,
                                    color: color,
                                    size: 25,
                                  ),
                                  title: Text(
                                    'เกี่ยวกับเรา',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/contact");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.phone_volume,
                                    color: color,
                                    size: 22,
                                  ),
                                  title: Text(
                                    'ติดต่อเรา',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
                  ),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (event) => setState(() {
                    isHoverMenu1 = true;
                  }),
                  onExit: (event) => setState(() {
                    isHoverMenu1 = true;
                  }),
                  child: GestureDetector(
                    child: const Text(
                      "บิซฟูล",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: w1),
              JoyDropDown(
                overlayHeight: 120,
                overlayWidth: 240,
                overlayOffset: const Offset(0, 0),
                overlayPosition: JoyOverlayPosition.bottom,
                overlayWidget: ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 250),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: BoxShapMenu(),
                      shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 102, 102, 102),
                            blurRadius: 6.0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView(
                          children: [
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/service");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    Ionicons.ribbon_outline,
                                    color: color,
                                    size: 22,
                                  ),
                                  title: Text(
                                    'บริการของเรา',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/terms");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    Ionicons.shield_checkmark_outline,
                                    color: color,
                                    size: 20,
                                  ),
                                  title: Text(
                                    'เงื่อนไขการใช้งาน',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
                  ),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  // onEnter: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  // onExit: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  child: GestureDetector(
                    child: const Text(
                      "บริการ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: w1),
              JoyDropDown(
                overlayHeight: 120,
                overlayWidth: 240,
                overlayOffset: const Offset(0, 0),
                overlayPosition: JoyOverlayPosition.bottom,
                overlayWidget: ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 250),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: BoxShapMenu(),
                      shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 102, 102, 102),
                            blurRadius: 6.0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView(
                          children: [
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/rate");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.alternate_exchange,
                                    color: color,
                                    size: 20,
                                  ),
                                  title: Text(
                                    'อัตราเเลกเปลี่ยน',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/charge");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.coins,
                                    color: color,
                                    size: 25,
                                  ),
                                  title: Text(
                                    'ค่าบริการ',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
                  ),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  // onEnter: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  // onExit: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  child: GestureDetector(
                    child: const Text(
                      "อัตราเเลกเปลี่ยน",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: w1),
              JoyDropDown(
                overlayHeight: 120,
                overlayWidth: 240,
                overlayOffset: const Offset(0, 0),
                overlayPosition: JoyOverlayPosition.bottom,
                overlayWidget: ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 250),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: BoxShapMenu(),
                      shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 102, 102, 102),
                            blurRadius: 6.0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView(
                          children: [
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/article");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.comment,
                                    color: color,
                                    size: 23,
                                  ),
                                  title: Text(
                                    'บทความ',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/video");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.youtube,
                                    color: color,
                                    size: 25,
                                  ),
                                  title: Text(
                                    'วิดีโอ',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
                  ),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  // onEnter: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  // onExit: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  child: GestureDetector(
                    child: const Text(
                      "สาระน่ารู้",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: w1),
              JoyDropDown(
                overlayHeight: 120,
                overlayWidth: 240,
                overlayOffset: const Offset(0, 0),
                overlayPosition: JoyOverlayPosition.bottom,
                overlayWidget: ShowUpAnimation(
                  delayStart: const Duration(milliseconds: 0),
                  animationDuration: const Duration(milliseconds: 250),
                  curve: Curves.bounceIn,
                  direction: Direction.vertical,
                  offset: 0.5,
                  child: Container(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: BoxShapMenu(),
                      shadows: [
                        BoxShadow(
                            color: Color.fromARGB(255, 102, 102, 102),
                            blurRadius: 6.0,
                            offset: Offset(2, 2)),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: ListView(
                          children: [
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  mouseCursor: SystemMouseCursors.click,
                                  onTap: () {
                                    Navigator.of(context).pushNamed("/help");
                                  },
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.question_circle,
                                    color: color,
                                    size: 25,
                                  ),
                                  title: Text(
                                    'คำถามที่พบบ่อย',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                            OnHoverMenu(
                              builder: (isHovered) {
                                final color = isHovered
                                    ? const Color(0xffa91f2e)
                                    : const Color.fromARGB(255, 90, 90, 90);
                                return ListTile(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/send_report");
                                  },
                                  mouseCursor: SystemMouseCursors.click,
                                  hoverColor:
                                      const Color.fromARGB(255, 109, 109, 109),
                                  leading: Icon(
                                    LineAwesomeIcons.exclamation_triangle,
                                    color: color,
                                    size: 25,
                                  ),
                                  title: Text(
                                    'แจ้งปัญหาการใช้งาน',
                                    style: TextStyle(color: color),
                                  ),
                                );
                              },
                            ),
                          ],
                        )),
                  ),
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  // onEnter: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  // onExit: (event) => setState(() {
                  //   isHoverMenu1 = true;
                  // }),
                  child: GestureDetector(
                    child: const Text(
                      "ช่วยเหลือ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
