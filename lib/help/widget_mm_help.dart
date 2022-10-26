import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget mmHelp(context) {
  double fM;
  double pL;
  double tM;
  double hB;
  double fZ;
  if (Device.width > 991) {
    fM = 24;
    pL = 15;
    tM = 30;
    hB = 70;
    fZ = 16;
  } else if (Device.width >= 768 && Device.width <= 991) {
    fM = 17;
    pL = 15;
    tM = 10;
    hB = 65;
    fZ = 15;
  } else {
    fM = 15;
    pL = 5;
    tM = 10;
    hB = 65;
    fZ = 14;
  }
  return Padding(
    padding: EdgeInsets.only(left: pL, right: pL),
    child: BootstrapRow(children: <BootstrapCol>[
      BootstrapCol(
          sizes: 'col-12',
          child: Padding(
            padding: EdgeInsets.only(top: tM, left: 5, right: 5, bottom: 10),
            child: Text(
              "หมวดหมู่",
              style: TextStyle(fontSize: fM, fontFamily: "Prompt-Medium"),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                Navigator.of(context).pushNamed("/clickmm");
              },
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(90, 240, 173, 181)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.store,
                              color: const Color(0xffa91f2e),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'การซื้อสินค้ากับ bizfull',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {
                Navigator.of(context).pushNamed("/clicksearch");
              },
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(108, 245, 203, 200)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.wallet,
                              color: const Color(0xffed3023),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'การชำระเงิน',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(108, 245, 203, 200)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.arrowRightArrowLeft,
                              color: const Color(0xffed3023),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'การคืนสินค้า และการคืนเงิน',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(90, 196, 198, 243)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.solidRectangleList,
                              color: const Color(0xff2e3192),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'หัวข้อทั่วไป',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(108, 245, 203, 200)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.sackDollar,
                              color: const Color(0xffed3023),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'ผลิตภัณฑ์ทางการเงิน',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(108, 245, 203, 200)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.tag,
                              color: const Color(0xffed3023),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'Deals & Rewards',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(125, 172, 240, 231)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.truck,
                              color: const Color(0xff18baa5),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'การจัดการคำสั่งซื้อ และการจัดส่ง',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(139, 240, 235, 144)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.userGroup,
                              color: const Color.fromARGB(255, 167, 159, 10),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'ผู้ขาย และ พาร์ทเนอร์',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
      BootstrapCol(
          sizes: 'col-xl-3 col-sm-12 col-12 col-md-6 col-lg-4',
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                height: hB,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: const Color.fromARGB(108, 245, 203, 200)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 0),
                            child: Icon(
                              FontAwesomeIcons.utensils,
                              color: const Color(0xffed3023),
                              size: fZ,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          'ShopeeFood',
                          style: TextStyle(fontSize: fZ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    ]),
  );
}
