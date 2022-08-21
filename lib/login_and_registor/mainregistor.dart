import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/login_and_registor/widget_registor.dart';



import 'package:bizfull/nav/mainnav.dart';
import 'package:flutter/material.dart';

class Registor extends StatefulWidget {
  const Registor({Key? key}) : super(key: key);

  @override
  State<Registor> createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navmain(),
            BootstrapContainer(fluid: false, children: <Widget>[
              registor(setState),
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
