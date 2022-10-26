// ignore_for_file: prefer_const_constructors

import 'package:bizfull/login_and_registor/mainregistor.dart';
import 'package:bizfull/login_and_registor/widget_mobile_registor.dart';

import 'package:flutter/material.dart';

class MainRegistor extends StatefulWidget {
  const MainRegistor({Key? key}) : super(key: key);

  @override
  State<MainRegistor> createState() => _MainRegistorState();
}

class _MainRegistorState extends State<MainRegistor> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 991) {
        return Registor();
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 991) {
        return Registormobile();
      } else {
        return Registormobile();
      }
    });
  }
}
