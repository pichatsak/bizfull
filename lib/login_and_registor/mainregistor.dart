import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/login_and_registor/widget_barmain_registor.dart';
import 'package:bizfull/login_and_registor/widget_registor.dart';

import 'package:bizfull/nav/mainnav.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Registor extends StatefulWidget {
  const Registor({Key? key}) : super(key: key);

  @override
  State<Registor> createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  @override
  Widget build(BuildContext context) {
    double hbar;

    String typeSc;
    if (Device.width > 991) {
      hbar = 119;
      typeSc = "pc";
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      typeSc = "mobile";
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      typeSc = "mobile";
    } else {
      hbar = 70;
      typeSc = "mobile";
    }
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: hbar),
                BootstrapContainer(
                    fluid: true,
                    decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                    children: [
                      typeSc == "pc" ? barmainregistor(context) : Container()
                    ]),
                BootstrapContainer(fluid: false, children: [
                  RegisterPage(),
                ]),
                BootstrapContainer(
                    fluid: true,
                    decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                    children: <Widget>[barfootterlogin()]),
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
    );
  }
}
