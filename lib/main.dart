import 'package:bizfull/checkout/main_checkout.dart';
import 'package:bizfull/contack/main_contack.dart';
import 'package:bizfull/delively/main_delively.dart';
import 'package:bizfull/help/clickbabymm/main_clickbabymm.dart';
import 'package:bizfull/help/mail_help.dart';
import 'package:bizfull/help/clickmm/main_clickmm.dart';
import 'package:bizfull/help/search/main_search.dart';
import 'package:bizfull/help/sendmail/main_sendmail.dart';
import 'package:bizfull/homepage/mainhome.dart';
import 'package:bizfull/login_and_registor/mainMasterLogin.dart';
import 'package:bizfull/login_and_registor/mainmasterregistor.dart';
import 'package:bizfull/product/main_product.dart';
import 'package:bizfull/profile/main_profile.dart';


import 'package:bizfull/shopcart/main_shopcart.dart';
import 'package:bizfull/showproduct/main_showproduct.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  await GetStorage.init();
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays(<SystemUiOverlay>[]);
  runApp(const MyApp());
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: SystemUiOverlay.values);
    super.initState();
  }

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
            "/product": (context) => const Product(),
            "/checkout": (context) => const CheckOut(),
            "/profile": (context) => const Profile(),
            "/help": (context) => const Help(),
            "/clickmm": (context) => const Clickmm(),
            "/clickbabymm": (context) => const Clickbaymm(),
            "/clicksearch": (context) => const Clicksearch(),
            "/sendmail": (context) => const Sendmail(),
            "/contack": (context) => const Contack(),
            "/delively": (context) => const Delively(),
          },
        );
      },
    );
  }
}
