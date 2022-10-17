import 'package:bizfull/login_and_registor/forgetpassword/main_forgetpassword.dart';
import 'package:bizfull/login_and_registor/forgetpassword/widget_mobile_forgetpassword.dart';
import 'package:flutter/material.dart';

class MainmasterForgetpassword extends StatefulWidget {
  const MainmasterForgetpassword({Key? key}) : super(key: key);

  @override
  State<MainmasterForgetpassword> createState() =>
      _MainmasterForgetpasswordState();
}

class _MainmasterForgetpasswordState extends State<MainmasterForgetpassword> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 991) {
        return const Forgetpassword();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 991) {
        return const Forgetpasswordmobile();
      } else {
        return const Forgetpasswordmobile();
      }
    });
  }
}
