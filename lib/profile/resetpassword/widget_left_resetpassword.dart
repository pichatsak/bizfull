import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget leftresetpassword(context) {
  double rM;
  double wM;
  if (Device.width > 1240) {
    rM = 30;
    wM = 10;
  } else {
    rM = 4;
    wM = 5;
  }
  return BootstrapContainer(
      padding: EdgeInsets.only(left: 20, top: 0, right: rM),
      fluid: true,
      children: [
        BootstrapRow(children: <BootstrapCol>[
          BootstrapCol(
              sizes: 'col-12',
              child: Column(children: <Widget>[
                Card(
                  //   shadowColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.zero,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red,
                        dividerColor: Colors.transparent,
                        fontFamily: "Prompt"),
                    child: ListTileTheme(
                      contentPadding: const EdgeInsets.only(right: 0),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        iconColor: const Color(0xffed3023),
                        backgroundColor: const Color(0xfffafafa),
                        maintainState: true,
                        title: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 6),
                              child: const Icon(
                                FontAwesomeIcons.userLarge,
                                color: Color(0xffa91f2e),
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: wM,
                            ),
                            const Text(
                              'บัญชีของฉัน',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: "Prompt-Medium"),
                            ),
                          ],
                        ),
                        collapsedIconColor: Colors.black,
                        collapsedBackgroundColor: const Color(0xfffafafa),
                        // subtitle: Text(
                        //     'Trailing expansion arrow icon'),
                        children: <Widget>[
                          ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0.0),
                            visualDensity: const VisualDensity(
                              horizontal: 0,
                              vertical: -4,
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/profile");
                                },
                                child: const Text(
                                  'ข้อมูลของฉัน',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_bank");
                                  },
                                  child: const Text(
                                    'บัญชีธนาคาร',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_address");
                                  },
                                  child: const Text(
                                    'ที่อยู่',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_reset");
                                  },
                                  child: const Text(
                                    'เปลี่ยนรหัสผ่าน',
                                    style: TextStyle(
                                        color: Color(0xffed3023), fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  //   shadowColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.zero,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red,
                        dividerColor: Colors.transparent,
                        fontFamily: "Prompt"),
                    child: ListTileTheme(
                      contentPadding: const EdgeInsets.only(right: 0),
                      child: ExpansionTile(
                        iconColor: const Color(0xffed3023),
                        backgroundColor: const Color(0xfffafafa),
                        maintainState: true,
                        title: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 6),
                              child: const Icon(
                                FontAwesomeIcons.clockRotateLeft,
                                color: Color(0xffa91f2e),
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: wM,
                            ),
                            const Text(
                              'คำสั่งซื้อ',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: "Prompt-Medium"),
                            ),
                          ],
                        ),
                        collapsedIconColor: Colors.black,
                        collapsedBackgroundColor: const Color(0xfffafafa),
                        // subtitle: Text(
                        //     'Trailing expansion arrow icon'),
                        children: <Widget>[
                          ListTile(
                            dense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 0.0),
                            visualDensity: const VisualDensity(
                              horizontal: 0,
                              vertical: -4,
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed("/profile_historysuc");
                                },
                                child: const Text(
                                  'ได้รับสินค้าแล้ว',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_loaddelivery");
                                  },
                                  child: const Text(
                                    'กำลังจัดส่ง',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_adddelivery");
                                  },
                                  child: const Text(
                                    'ที่ต้องจัดส่ง',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/profile_addbuy");
                                  },
                                  child: const Text(
                                    'ที่ต้องชำระ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                          ListTile(
                              dense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 0.0),
                              visualDensity: const VisualDensity(
                                  horizontal: 0, vertical: -4),
                              title: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed("/wait_offer");
                                  },
                                  child: const Text(
                                    'ยกเลิกสินค้า',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ])),
        ])
      ]);
}
