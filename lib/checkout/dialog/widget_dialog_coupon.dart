import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dialogcoupon(context) {
  double bP;
  double wP;

  if (Device.width > 1240) {
    bP = 550;
    wP = 550;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    bP = 550;
    wP = 550;
  } else if (Device.width >= 768 && Device.width <= 991) {
    bP = 550;
    wP = 550;
  } else {
    bP = 400;
    wP = 550;
  }
  return SizedBox(
    width: wP,
    height: bP,
    child: Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 50, right: 5, left: 5, bottom: 10),
            child: BootstrapRow(
              children: [
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum()),
                BootstrapCol(
                    sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                    child: couponnum())
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "คูปองส่วนลด",
                      style: TextStyle(
                          fontSize: 16.0, fontFamily: "Prompt-Medium"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            FontAwesomeIcons.xmark,
                            color: Color(0xffed3023),
                          ),
                        )),
                  )
                ],
              ),
            )),
        const SizedBox(
          height: 50,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: Colors.black12,
                height: 1.0,
              )),
        ),
      ],
    ),
  );
}

Widget couponnum() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: Image.asset(
            "images/na.png",
            filterQuality: FilterQuality.high,
            fit: BoxFit.contain,
            width: 35,
          ),
        ),
        Container(
          height: 140,
          decoration: BoxDecoration(
              color: const Color.fromARGB(212, 247, 229, 227),
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: const Color(0xffed3023),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: const Text(
                      "ลด",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xffed3023),
                          fontFamily: "Prompt-Medium"),
                    ),
                  ),
                  const SizedBox(width: 5),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(-3 / 360),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffee602e),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 2, bottom: 2),
                        child: Text(
                          "100.-",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontFamily: "Prompt-Bold",
                              height: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 0),
              const Text("เมื่อซื้อขั้นต่ำ 1000"),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffed3023)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 0, bottom: 0),
                        child: Row(
                          children: const [
                            Text(
                              "ใช้ส่วนลด",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
