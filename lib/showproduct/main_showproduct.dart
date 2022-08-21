import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/showproduct/widget_showproduct.dart';
import 'package:flutter/material.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({Key? key}) : super(key: key);

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  @override
  Widget build(BuildContext context) {
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Navmain(),
            BootstrapContainer(
                fluid: true,
                decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                children: [showproduct()]),
            BootstrapContainer(fluid: true, children: [datashowproduct(context)])
          ],
        ),
      ),
    );
  }
}
