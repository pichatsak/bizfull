import 'package:bizfull/checkout/dialog/widget_dialog_coupon.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum SingingCharacter1 { lafayette, jefferson }

var formatNum = NumberFormat('#,###,##0.00');
Widget bin(
    character1,
    setState,
    context,
    double totalAll,
    double totalDisc,
    double totalFinal,
    int numAllpd,
    List<PaymentModel> listPayment,
    String pmId,
    void Function(String value) updatePay) {
  String typbin;
  double hy;
  double rP;
  double tP;
  double bP;
  String tYP;

  if (Device.width > 1240) {
    typbin = "pc";
    hy = 20;
    rP = 0;
    tP = 0;
    bP = 0;
    tYP = "pc";
  } else if (Device.width >= 992 && Device.width <= 1240) {
    typbin = "lg";
    hy = 10;
    rP = 0;
    tP = 0;
    bP = 0;
    tYP = "pc";
  } else {
    typbin = "pc";
    hy = 20;
    rP = 10;
    tP = 20;
    bP = 20;
    tYP = "mobile";
  }
  return Padding(
    padding: EdgeInsets.only(right: rP, top: tP, bottom: bP), //15
    child: Column(
      children: [
        typbin == "pc"
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          child: const Icon(
                            FontAwesomeIcons.receipt,
                            size: 18,
                            color: Color(0xffa91f2e),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "เลือกวิธีการชำระเงิน",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  // InkWell(
                  //   splashColor: Colors.transparent,
                  //   hoverColor: Colors.transparent,
                  //   highlightColor: Colors.transparent,
                  //   onTap: () {},
                  //   child: Row(
                  //     children: [
                  //       const Text("ดูวิธีชำระทั้งหมด",
                  //           style: TextStyle(
                  //               fontSize: 13, color: Color(0xffed3023))),
                  //       Container(
                  //         margin: const EdgeInsets.only(top: 2.5),
                  //         child: Stack(children: [
                  //           Container(
                  //             margin: const EdgeInsets.only(left: 3),
                  //             child: const Icon(
                  //               Icons.arrow_forward_ios,
                  //               size: 10,
                  //               color: Color(0xffed3023),
                  //             ),
                  //           ),
                  //           Container(
                  //             margin: const EdgeInsets.only(left: 9),
                  //             child: const Icon(
                  //               Icons.arrow_forward_ios,
                  //               size: 10,
                  //               color: Color(0xffed3023),
                  //             ),
                  //           ),
                  //           Container(
                  //             margin: const EdgeInsets.only(left: 15),
                  //             child: const Icon(
                  //               Icons.arrow_forward_ios,
                  //               size: 10,
                  //               color: Color(0xffed3023),
                  //             ),
                  //           )
                  //         ]),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              )
            : Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          child: const Icon(
                            FontAwesomeIcons.receipt,
                            size: 18,
                            color: Color(0xffa91f2e),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "เลือกวิธีการชำระเงิน",
                        style: TextStyle(
                            fontSize: 16, fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  // InkWell(
                  //   splashColor: Colors.transparent,
                  //   hoverColor: Colors.transparent,
                  //   highlightColor: Colors.transparent,
                  //   onTap: () {},
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(top: 10),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [
                  //         const Text("ดูวิธีชำระทั้งหมด",
                  //             style: TextStyle(
                  //                 fontSize: 13, color: Color(0xffed3023))),
                  //         Container(
                  //           margin: const EdgeInsets.only(top: 2.5),
                  //           child: Stack(children: [
                  //             Container(
                  //               margin: const EdgeInsets.only(left: 3),
                  //               child: const Icon(
                  //                 Icons.arrow_forward_ios,
                  //                 size: 10,
                  //                 color: Color(0xffed3023),
                  //               ),
                  //             ),
                  //             Container(
                  //               margin: const EdgeInsets.only(left: 9),
                  //               child: const Icon(
                  //                 Icons.arrow_forward_ios,
                  //                 size: 10,
                  //                 color: Color(0xffed3023),
                  //               ),
                  //             ),
                  //             Container(
                  //               margin: const EdgeInsets.only(left: 15),
                  //               child: const Icon(
                  //                 Icons.arrow_forward_ios,
                  //                 size: 10,
                  //                 color: Color(0xffed3023),
                  //               ),
                  //             )
                  //           ]),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
        SizedBox(height: hy),
        ...listPayment.map((itempm) => Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffa91f2e)),
                      borderRadius: BorderRadius.circular(7),
                      color: const Color.fromARGB(19, 241, 167, 160)),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 8),
                    child: ListTile(
                      title: Text(
                        itempm.payName,
                        style: const TextStyle(fontSize: 15),
                      ),
                      // subtitle: const Text(
                      //   'ชำระเงินเมื่อได้รับสินค้า',
                      //   style: TextStyle(fontSize: 12),
                      // ),
                      trailing: Image.network(
                        "${Global.hostImgPayment}/${itempm.payImg}",
                        width: 60,
                        height: 60,
                      ),
                      leading: Radio<String>(
                        activeColor: const Color(0xffa91f2e),
                        value: itempm.payId.toString(),
                        groupValue: pmId,
                        onChanged: (String? value) {
                          updatePay(value!);
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            )),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: const Color(0xffa91f2e)),
        //       borderRadius: BorderRadius.circular(7),
        //       color: const Color.fromARGB(19, 241, 167, 160)),
        //   child: Padding(
        //     padding: const EdgeInsets.only(bottom: 8, top: 8),
        //     child: ListTile(
        //       title: const Text(
        //         'พร้อมเพย์',
        //         style: TextStyle(fontSize: 15),
        //       ),
        //       // subtitle: const Text(
        //       //   'ชำระเงินเมื่อได้รับสินค้า',
        //       //   style: TextStyle(fontSize: 12),
        //       // ),
        //       trailing: SvgPicture.asset(
        //         "images/qrcode.svg",
        //         width: 25,
        //         height: 25,
        //       ),
        //       leading: Radio<SingingCharacter1>(
        //         activeColor: const Color(0xffa91f2e),
        //         value: SingingCharacter1.lafayette,
        //         groupValue: character1,
        //         onChanged: (SingingCharacter1? value) {
        //           setState(() {
        //             character1 = value;
        //           });
        //         },
        //       ),
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 10),
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(color: Colors.black12),
        //     borderRadius: BorderRadius.circular(7),
        //     // gradient: const LinearGradient(
        //     //   begin: Alignment.topLeft,
        //     //   end: Alignment.bottomLeft,
        //     //   stops: [0.0, 1.0],
        //     //   colors: [
        //     //     Color(0xfff8d20f),
        //     //     Color(0xfff2890c),
        //     //   ],
        //     // ),
        //   ),
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(bottom: 8, top: 8),
        //         child: ListTile(
        //           title: const Text(
        //             'Truemoney Wallet',
        //             style: TextStyle(fontSize: 15),
        //           ),
        //           trailing: Image.asset(
        //             'images/true.png',
        //             height: 60.0,
        //             width: 60.0,
        //           ),
        //           leading: Radio<SingingCharacter1>(
        //             activeColor: const Color(0xffa91f2e),
        //             value: SingingCharacter1.jefferson,
        //             groupValue: character1,
        //             onChanged: (SingingCharacter1? value) {
        //               setState(() {
        //                 character1 = value;
        //               });
        //             },
        //           ),
        //         ),
        //       ),
        //       // Container(
        //       //   height: 1,
        //       //   color: Colors.black12,
        //       // ),
        //       // Padding(
        //       //   padding: const EdgeInsets.all(8.0),
        //       //   child: Row(
        //       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       //     children: [
        //       //       const Text(
        //       //         'กดเพื่อเพิ่มบัตรเครดิต',
        //       //         style: TextStyle(fontSize: 12),
        //       //       ),
        //       //       Row(
        //       //         children: [
        //       //           SvgPicture.asset(
        //       //             'images/master.svg',
        //       //             height: 20.0,
        //       //             width: 20.0,
        //       //             allowDrawingOutsideViewBox: true,
        //       //           ),
        //       //           const SizedBox(width: 5),
        //       //           SvgPicture.asset(
        //       //             'images/jcb.svg',
        //       //             height: 20.0,
        //       //             width: 20.0,
        //       //             allowDrawingOutsideViewBox: true,
        //       //           ),
        //       //           const SizedBox(width: 5),
        //       //           SvgPicture.asset(
        //       //             'images/visa.svg',
        //       //             height: 20.0,
        //       //             width: 20.0,
        //       //             allowDrawingOutsideViewBox: true,
        //       //           ),
        //       //         ],
        //       //       )
        //       //     ],
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),
        const SizedBox(height: 30),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 2),
                child: const Icon(
                  FontAwesomeIcons.tag,
                  size: 18,
                  color: Color(0xffa91f2e),
                )),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "คูปองส่วนลด",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: TextFormField(
                enabled: false,
                cursorColor: Colors.red,
                decoration: const InputDecoration(
                    hintText: "คูปองส่วนลด",
                    hintStyle: TextStyle(fontSize: 13, color: Colors.black54),
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(7)),
                    //     borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    filled: true,
                    fillColor: Color(0xfff3f3f3)),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff2e3192)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ))),
              onPressed: () {
                showDialog<String>(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    insetPadding: tYP == "pc"
                        ? const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 24.0)
                        : const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 24.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding: const EdgeInsets.only(top: 0.0),
                    content: dialogcoupon(context),
                  ),
                );
              },
              child: const SizedBox(
                height: 46.5,
                width: 70,
                child: Center(
                    child: Text(
                  "เลือก",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: const Icon(
                  FontAwesomeIcons.cartArrowDown,
                  size: 18,
                  color: Color(0xffa91f2e),
                )),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "สรุปข้อมูลคำสั่งซื้อ",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "ยอดรวม ($numAllpd)",
              style: const TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              "฿${formatNum.format(totalAll)}",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "ส่วนลด",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            Text(
              "฿${formatNum.format(totalDisc)}",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(height: 1, color: Colors.black12),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "ยอดรวมทั้งสิ้น",
              style: TextStyle(fontSize: 14),
            ),
            Text(
              "฿${formatNum.format(totalFinal)}",
              style: const TextStyle(fontSize: 16, color: Color(0xffed3023)),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xffed3023)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ))),
            onPressed: () {
              Navigator.of(context).pushNamed("/evidence");
            },
            child: const SizedBox(
              height: 45,
              child: Center(
                  child: Text(
                "สั่งซื้อ",
                style: TextStyle(fontSize: 14, color: Colors.white),
              )),
            )),
      ],
    ),
  );
}
