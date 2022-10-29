import 'package:bizfull/nav/widget_desktopview.dart';
import 'package:bizfull/nav/widget_mobileview.dart';
import 'package:flutter/material.dart';

class Navmain extends StatefulWidget {
  const Navmain({Key? key}) : super(key: key);

  @override
  State<Navmain> createState() => _NavmainState();
}

class _NavmainState extends State<Navmain> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 991) {
        // ignore: prefer_const_constructors
        return NavDeskTop();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 991) {
        return NavMobiles();
      } else {
        return NavMobiles();
      }
    });
  }
}
