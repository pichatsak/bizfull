import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/login_and_registor/widget_barfotter.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/showproduct/widget_showproduct.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({Key? key}) : super(key: key);

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  final box = GetStorage();

  @override
  void initState() {
    box.write("curpage", "showproduct");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String typeSc1;
    double hbar;

    if (Device.width > 991) {
      typeSc1 = "pc";
      hbar = 179;
    } else if (Device.width >= 768 && Device.width <= 991) {
      typeSc1 = "md";
      hbar = 70;
    } else if (Device.width >= 576 && Device.width <= 767) {
      typeSc1 = "xm";
      hbar = 70;
    } else {
      typeSc1 = "xs";
      hbar = 70;
    }
    bootstrapGridParameters(gutterSize: 0);
    return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: hbar),
                  BootstrapContainer(
                      fluid: true,
                      decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                      children: [showproduct(context)]),
                  BootstrapContainer(
                      fluid: true, children: [datashowproduct(context)]),
                  typeSc1 == "pc"
                      ? BootstrapContainer(
                          fluid: true,
                          decoration:
                              const BoxDecoration(color: Color(0xfff3f3f3)),
                          children: <Widget>[barfootterlogin()])
                      : Container()
                ],
              ),
            ),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(5,context)
            : const SizedBox(
                height: 0,
              ));
  }
}
