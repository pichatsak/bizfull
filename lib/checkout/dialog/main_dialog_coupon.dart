import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/discount_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class DialogChooseCoupon extends StatefulWidget {
  final ValueChanged<DiscoutViewModel> onValChange;
  double totals = 0.00;
  DialogChooseCoupon(
      {Key? key, required this.totals, required this.onValChange})
      : super(key: key);

  @override
  State<DialogChooseCoupon> createState() => _DialogChooseCouponState();
}

class _DialogChooseCouponState extends State<DialogChooseCoupon> {
  final box = GetStorage();
  List<DiscoutViewModel> listDiscAll = [];
  bool isLoad = false;
  double totalGet = 0.00;
  @override
  void initState() {
    super.initState();
    totalGet = widget.totals;
    getCouponShow();
  }

  Future<void> getCouponShow() async {
    listDiscAll = [];
    var url =
        "${Global.hostName}/discount_all.php?user_id=${box.read('user_id')}";
    var res = await http.get(Uri.parse(url));
    var getData = await json.decode(res.body);
    if (getData['status'] == "ok") {
      getData["data"].map((data) {
        DiscoutViewModel getRow = DiscoutViewModel.fromJson(data);
        if (totalGet >= getRow.discountFirst) {
          getRow.isEnableUse = true;
        }
        listDiscAll.add(getRow);
      }).toList();
      setState(() {
        isLoad = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  ...listDiscAll.map((item) => BootstrapCol(
                      sizes: 'col-xl-6 col-lg-6 col-md-6 col-12',
                      child: couponnum(item))),
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

  Widget couponnum(DiscoutViewModel item) {
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 2, bottom: 2),
                          child: item.discountType == "price"
                              ? Text(
                                  "${item.discountNum}.-",
                                  style: const TextStyle(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontFamily: "Prompt-Bold",
                                      height: 1),
                                )
                              : Text(
                                  "${item.discountNum}%",
                                  style: const TextStyle(
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
                Text("เมื่อซื้อขั้นต่ำ ${item.discountFirst}"),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      item.isEnableUse
                          ? ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffed3023)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ))),
                              onPressed: () {
                                widget.onValChange(
                                    listDiscAll[listDiscAll.indexOf(item)]);

                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 0, bottom: 0),
                                child: Row(
                                  children: const [
                                    Text(
                                      "ใช้ส่วนลด",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Text(
                                "ไม่สามารถใช้ส่วนลดนี้ได้",
                                style: TextStyle(
                                    color: Color(0xffed3023), fontSize: 12),
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
}
