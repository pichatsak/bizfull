import 'package:bizfull/showproduct/dataproduct/comment/widget_comment_byone.dart';
import 'package:bizfull/showproduct/dataproduct/comment/widget_page_comment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget comment(context) {
  String typeSc1;
  double allpad;
  double fZ;
  if (Device.width > 991) {
    typeSc1 = "pc";
    allpad = 15;
    fZ = 18;
  } else if (Device.width >= 768 && Device.width <= 991) {
    typeSc1 = "mobile";
    allpad = 15;
    fZ = 16;
  } else if (Device.width >= 576 && Device.width <= 767) {
    typeSc1 = "mobile";
    allpad = 15;
    fZ = 14;
  } else {
    typeSc1 = "mobile";
    allpad = 5;
    fZ = 14;
  }

  return Padding(
    padding: EdgeInsets.only(top: 10, left: allpad, right: allpad, bottom: 10),
    child: Column(children: [
      typeSc1 == "pc"
          ? const SizedBox(
              width: double.infinity,
              child: Text("คะแนนและรีวิว",
                  style: TextStyle(
                    fontFamily: "Prompt-Medium",
                    fontSize: 18,
                  )),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("คะแนนและรีวิว",
                    style: TextStyle(
                      fontFamily: "Prompt-Medium",
                      fontSize: fZ,
                    )),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/allcomment");
                  },
                  child: Row(
                    children: [
                      const Text("ดูทั้งหมด",
                          style: TextStyle(
                              fontFamily: "Prompt-Medium",
                              fontSize: 14,
                              color: Color(0xffed3023))),
                      const SizedBox(width: 5),
                      Container(
                          margin: const EdgeInsets.only(bottom: 1),
                          child: const Icon(
                            FontAwesomeIcons.chevronRight,
                            color: Color(0xffed3023),
                            size: 14,
                          ))
                    ],
                  ),
                ),
              ],
            ),
      const SizedBox(height: 15),
      typeSc1 == "pc"
          ? Container(
              height: 146,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(112, 255, 240, 235)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(children: [
                                const Text("4",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xffed3023))),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: const Text("/5",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.black45)),
                                )
                              ]),
                              Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const <Widget>[
                                    Icon(Icons.star,
                                        color: Color(0xffed3023), size: 30.0),
                                    Icon(Icons.star,
                                        color: Color(0xffed3023), size: 30.0),
                                    Icon(Icons.star,
                                        color: Color(0xffed3023), size: 30.0),
                                    Icon(Icons.star,
                                        color: Color(0xffed3023), size: 30.0),
                                    Icon(Icons.star_border,
                                        color: Color(0xffed3023), size: 30.0),
                                  ])
                            ])),
                    const SizedBox(width: 50),
                    Flexible(
                      child: Wrap(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffed3023)),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 30, right: 30, top: 5, bottom: 5),
                                  child: Text("ทั้งหมด",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffed3023))),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Text("5 ดาว (1.8พัน)",
                                      style: TextStyle(fontSize: 14)),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Text("4 ดาว (11พัน)",
                                      style: TextStyle(fontSize: 14)),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Text("3 ดาว (159)",
                                      style: TextStyle(fontSize: 14)),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Text("2 ดาว (111)",
                                      style: TextStyle(fontSize: 14)),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 5),
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 5, bottom: 5),
                                  child: Text("1 ดาว (99)",
                                      style: TextStyle(fontSize: 14)),
                                )))
                      ]),
                    )
                  ],
                ),
              ),
              //โทรศัพท์
            )
          : Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(7),
                  color: const Color.fromARGB(112, 255, 240, 235)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: const [
                            Text("4/5",
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xffed3023))),
                            Text(" (16.7 พันรีวิว)",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45))
                          ]),
                          Row(children: const <Widget>[
                            Icon(Icons.star,
                                color: Color(0xffed3023), size: 20.0),
                            Icon(Icons.star,
                                color: Color(0xffed3023), size: 20.0),
                            Icon(Icons.star,
                                color: Color(0xffed3023), size: 20.0),
                            Icon(Icons.star,
                                color: Color(0xffed3023), size: 20.0),
                            Icon(Icons.star_border,
                                color: Color(0xffed3023), size: 20.0),
                          ])
                        ]),
                  ],
                ),
              ),
            ),
      typeSc1 == "pc" ? const SizedBox(height: 10) : Container(),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: commentbyone(),
      ),
      Container(height: 1, color: Colors.black12),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: commentbyone(),
      ),
      Container(height: 1, color: Colors.black12),
      Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: commentbyone(),
      ),
      Container(height: 1, color: Colors.black12),
      typeSc1 == "pc"
          ? Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pagecomment(
                    currentPage: 1,
                    totalPages: 3,
                    onPageChanged: (page) {},
                  ),
                ],
              ),
            )
          : Container(),
    ]),
  );
}
