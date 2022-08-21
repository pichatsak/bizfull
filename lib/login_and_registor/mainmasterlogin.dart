import 'package:bizfull/login_and_registor/mainlogin.dart';
import 'package:bizfull/login_and_registor/widget_mobile_login.dart';
import 'package:flutter/material.dart';

class MainLogin extends StatefulWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  State<MainLogin> createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 991) {
        return const Login1();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 991) {
        return const Loginmobile();
      } else {
        return const Loginmobile();
      }
    });
  }
}
