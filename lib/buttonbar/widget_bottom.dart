// ignore_for_file: avoid_print

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget bottom(int page,BuildContext context) {
  return StyleProvider(
    style: Style(),
    child: ConvexAppBar(
      color: Colors.white,
      style: TabStyle.reactCircle,
      backgroundColor: const Color(0xffad2332),
      height: 55,
      top: -15,
      curveSize: 65,
      gradient: const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: [
          0.01,
          0.4,
          0.6,
          0.9,
          1.5,
        ],
        colors: [
          Color(0xffad2332),
          Color(0xffd9695c),
          Color(0xffef4137),
          Color(0xffd9695c),
          Color(0xffad2332),
        ],
      ),
      items: const [
        TabItem(
          icon: FontAwesomeIcons.house,
          title: "หน้าแรก",
        ),
        TabItem(icon: FontAwesomeIcons.bagShopping, title: "ตะกร้าสินค้า"),
        TabItem(icon: FontAwesomeIcons.solidCommentDots, title: "Live Chat"),
        TabItem(icon: FontAwesomeIcons.solidBell, title: "แจ้งเตือน"),
        TabItem(icon: FontAwesomeIcons.solidCircleUser, title: "เข้าสู่ระบบ"),
      ],
      initialActiveIndex: page<5?page:0,
      onTap: (int i) => setGoPage(i,context),
    ),
  );
}

setGoPage(int i,context) {
  if(i==0){
    Navigator.of(context).pushNamed("/");
  }else if(i==1){
    Navigator.of(context).pushNamed("/shopcart");
  }else if(i==2){
     Navigator.of(context).pushNamed("/chatmobile");
  }else if(i==3){
    
  }else if(i==4){
    Navigator.of(context).pushNamed("/login");
  }
}

class Style extends StyleHook {
  @override
  double get activeIconSize => 20;

  @override
  double get activeIconMargin => 15;

  @override
  double get iconSize => 5;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(fontSize: 11, color: color);
  }
}
