import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/nav/box_shap_menu.dart';
import 'package:bizfull/nav/hover_menu.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:joy_dropdowns/joy_dropdowns.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:show_up_animation/show_up_animation.dart';

@immutable
class NavDeskTop extends StatefulWidget {
  const NavDeskTop({Key? key}) : super(key: key);

  @override
  State<NavDeskTop> createState() => _NavDeskTopState();
}

class _NavDeskTopState extends State<NavDeskTop> {
  bool isHoverMenu1 = false;

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
                              child: Column(
                                children: [
                                  getMenuTop(),
                                  getMenuMiddle(),
                                  getMenuBottom()
                                ],
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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(FontAwesomeIcons.circleQuestion,
                  size: 20, color: Colors.white),
              SizedBox(width: 5),
              Text("ช่วยเหลือ",
                  style: TextStyle(color: Colors.white, fontSize: 13)),
              SizedBox(width: 35),
              // SvgPicture.asset(
              //   "images/car.svg",
              //   color: Colors.white,
              //   width: 20,
              // ),
              Icon(
                // LineIcons.shipping_fast,
                FontAwesomeIcons.truckFast,
                size: 16,
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
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5.5),
                child: const Icon(
                  FontAwesomeIcons.bagShopping,
                  size: 20,
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
              const SizedBox(width: 35),
              const Icon(
                FontAwesomeIcons.solidBell,
                size: 20,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "การแจ้งเตือน",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(width: 35),
              const Icon(
                FontAwesomeIcons.solidCircleUser,
                size: 20,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
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
      ),
    );
  }

  Widget getMenuMiddle() {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 20, top: 5),
      child: Row(
        children: [
          SizedBox(
            width: 140,
            child: Image.asset("images/loconew.png",
                filterQuality: FilterQuality.high),
          ),
          const SizedBox(
            width: 40,
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 40, top: 15, bottom: 15, right: 20),
                    hintText:
                        'ค้นหา สินค้าและบริการ รวมถึงข้อมูลต่างๆของบิซฟูล ที่นี่',
                    hintStyle: const TextStyle(color: Colors.black54),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
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
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getMenuBottom() {
    return Padding(
      // padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: const Text(
                "ติดต่อสอบถาม",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
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
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
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
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
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
                              mouseCursor: SystemMouseCursors.click,
                              hoverColor:
                                  const Color.fromARGB(255, 109, 109, 109),
                              leading: Icon(
                                LineAwesomeIcons.youtube,
                                color: color,
                                size: 25,
                              ),
                              title: Text(
                                'วิดีโอแนะนำ',
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
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
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
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
