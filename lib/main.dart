import 'package:bizfull/homepage/mainhome.dart';
import 'package:bizfull/login_and_registor/mainMasterLogin.dart';
import 'package:bizfull/login_and_registor/mainmasterregistor.dart';
import 'package:bizfull/login_and_registor/mainregistor.dart';
import 'package:bizfull/shopcart/main_shopcart.dart';
import 'package:bizfull/showproduct/main_showproduct.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  // setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          scrollBehavior: AppScrollBehavior(),
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Prompt',
          ),
          initialRoute: '/',
          routes: {
            "/": (context) => const MyHomePage(),
            "/login": (context) => const MainLogin(),
            "/registor": (context) => const MainRegistor(),
            "/showproduct": (context) => const ShowProduct(),
            "/shopcart": (context) => const ShopCart(),
          },
        );
      },
    );
  }
}
