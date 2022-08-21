import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/login_and_registor/widget_login.dart';


import 'package:bizfull/nav/mainnav.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navmain(),
            BootstrapContainer(fluid: false, children: <Widget>[
              login(setState),
            ]),
            BootstrapContainer(
                fluid: true,
                decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                children: <Widget>[barfootterlogin()]),
          ],
        ),
      ),
      
    );
  }
}
