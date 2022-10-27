import 'package:bizfull/route/fluro_router.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'international shipping/main_international_shipping.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  FluroRouters.setupRouter();
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
            // initialRoute: '/article',
            onGenerateRoute: FluroRouters.router.generator
            // routes: {
            // "/": (context) => const MyHomePage(),
            // "/login": (context) => const MainLogin(),
            // "/registor": (context) => const MainRegistor(),
            // // "/products": (context) => ShowProduct(),
            // "/shopcart": (context) => const ShopCart(),
            // "/product": (context) => const Product(),
            // "/checkout": (context) => const CheckOut(),
            // "/profile": (context) => const Profile(),
            // "/help": (context) => const Help(),
            // "/clickmm": (context) => const Clickmm(),
            // "/clickbabymm": (context) => const Clickbaymm(),
            // "/clicksearch": (context) => const Clicksearch(),
            // "/send_report": (context) => const Sendmail(),
            // "/contack": (context) => const Contack(),
            // "/delively": (context) => const Delively(),
            // "/profile_mobile": (context) => const ProfileMobile(),
            // "/profile_bank": (context) => const ProfileBank(),
            // "/profile_address": (context) => const ProfileAddress(),
            // "/profile_reset": (context) => const ProfileReset(),
            // "/profile_historysuc": (context) => const ProfileHistorysuc(),
            // "/profile_loaddelivery": (context) => const ProfileLoadDelivery(),
            // "/profile_adddelivery": (context) => const ProfileAddDelivery(),
            // "/profile_addbuy": (context) => const ProfileAddBuy(),
            // "/profile_cancle": (context) => const ProfileCancle(),
            // "/forgetpassword": (context) => const MainmasterForgetpassword(),
            // "/allcomment": (context) => const Allcomment(),
            // "/article": (context) => const Article(),
            // },
            );
      },
    );
  }
}
