import 'package:bizfull/homepage/mainhome.dart';
import 'package:bizfull/login_and_registor/mainMasterLogin.dart';
import 'package:bizfull/login_and_registor/mainmasterregistor.dart';
import 'package:bizfull/shopcart/main_shopcart.dart';
import 'package:bizfull/showproduct/main_showproduct.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  // setUrlStrategy(PathUrlStrategy());
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(<SystemUiOverlay>[]);
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
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
          },
        );
      },
    );
  }
}
