import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/help/sendmail/send_report_page_mb.dart';
import 'package:bizfull/help/sendmail/send_report_page_pc.dart';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget gsendmail() {
  String tWY;
  if (Device.width > 991) {
    tWY = "pc";
  } else if (Device.width >= 768 && Device.width <= 991) {
    tWY = "mobile";
  } else if (Device.width >= 576 && Device.width <= 767) {
    tWY = "mobile";
  } else {
    tWY = "mobile";
  }
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
        sizes: 'col-12',
        child: tWY == "pc" ? SendReportPcPage() : SendReportMBPage())
  ]);
}
