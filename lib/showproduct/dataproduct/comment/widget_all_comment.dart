import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/showproduct/dataproduct/comment/widget_bar_comment.dart';
import 'package:bizfull/showproduct/dataproduct/comment/widget_comment_byone.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Allcomment extends StatefulWidget {
  const Allcomment({Key? key}) : super(key: key);

  @override
  State<Allcomment> createState() => _AllcommentState();
}

class _AllcommentState extends State<Allcomment> {
  final box = GetStorage();
  @override
  void initState() {
    box.write("curpage", "allcomment");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double hbar;
    double pad;
    double h;

    if (Device.width > 991) {
      hbar = 119;
      pad = 10;
      h = 30;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
      pad = 10;
      h = 15;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
      pad = 10;
      h = 15;
    } else {
      hbar = 70;
      pad = 10;
      h = 15;
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
                      children: [barallcommentmobile(context)]),
                  BootstrapContainer(
                    fluid: true,
                    padding: EdgeInsets.only(top: pad),
                    children: [
                      BootstrapRow(children: <BootstrapCol>[
                        BootstrapCol(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Wrap(children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: const Color(
                                                          0xffed3023)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: const [
                                                    Text("ทั้งหมด",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xffed3023))),
                                                  ],
                                                ),
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              width: 92,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              1, 75, 75, 75)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: const Color.fromARGB(
                                                      31, 75, 75, 75)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                        ]),
                                                    const Text("(1.8พัน)",
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              1, 75, 75, 75)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: const Color.fromARGB(
                                                      31, 75, 75, 75)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                        ]),
                                                    const Text("(1.8พัน)",
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              1, 75, 75, 75)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: const Color.fromARGB(
                                                      31, 75, 75, 75)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                        ]),
                                                    const Text("(1.8พัน)",
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              1, 75, 75, 75)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: const Color.fromARGB(
                                                      31, 75, 75, 75)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                        ]),
                                                    const Text("(1.8พัน)",
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              ))),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                              height: 45,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              1, 75, 75, 75)),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: const Color.fromARGB(
                                                      31, 75, 75, 75)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15,
                                                    right: 15,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: const <
                                                            Widget>[
                                                          Icon(Icons.star,
                                                              color: Color(
                                                                  0xffed3023),
                                                              size: 12),
                                                        ]),
                                                    const Text("(1.8พัน)",
                                                        style: TextStyle(
                                                            fontSize: 12)),
                                                  ],
                                                ),
                                              ))),
                                    ]),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Container(height: 1, color: Colors.black12),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 6, right: 6),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: commentbyone(),
                                    ),
                                    Container(height: 1, color: Colors.black12),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: commentbyone(),
                                    ),
                                    Container(height: 1, color: Colors.black12),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: commentbyone(),
                                    ),
                                    Container(height: 1, color: Colors.black12),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: commentbyone(),
                                    ),
                                    
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                      ])
                    ],
                  ),
                  SizedBox(height: h),
                ],
              ),
            ),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(1, context)
            : const SizedBox(
                height: 0,
              ));
  }
}
