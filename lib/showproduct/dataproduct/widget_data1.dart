import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/models/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget data1(ProductViewModel pdModel) {
  double f1;
  if (Device.width > 1240) {
    f1 = 14;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    f1 = 14;
  } else if (Device.width >= 768 && Device.width <= 991) {
//md
    f1 = 14;
  } else {
    f1 = 14;
  }
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
    child: BootstrapRow(
      children: [
        BootstrapCol(
            sizes: 'col-6',
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 0, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('หมวดหมู่',
                      style: TextStyle(fontSize: f1, color: Colors.black54)),
                  Text(pdModel.categoryName,
                      style: TextStyle(
                          fontSize: f1, color: const Color(0xffed3023))),
                ],
              ),
            )),
        BootstrapCol(
            sizes: 'col-6',
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('กลุ่มสินค้า',
                      style: TextStyle(fontSize: f1, color: Colors.black54)),
                  Text(pdModel.groupTitle, style: TextStyle(fontSize: f1)),
                ],
              ),
            )),

        // BootstrapCol(
        //     sizes: 'col-6',
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 10, left: 10, right: 0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text('แบรนด์',
        //               style: TextStyle(fontSize: f1, color: Colors.black54)),
        //           Text('No Brand', style: TextStyle(fontSize: f1)),
        //         ],
        //       ),
        //     )),
        // BootstrapCol(
        //     sizes: 'col-6',
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 10, left: 0, right: 10),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text('SKU',
        //               style: TextStyle(fontSize: f1, color: Colors.black54)),
        //           Text('3325997730_TH-12336269745',
        //               style: TextStyle(fontSize: f1)),
        //         ],
        //       ),
        //     )),
        // BootstrapCol(
        //     sizes: 'col-6',
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 10, left: 10, right: 0),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text('ประเภทสินค้า',
        //               style: TextStyle(fontSize: f1, color: Colors.black54)),
        //           Text('ไมโครไฟเบอร์',
        //               style: TextStyle(
        //                   fontSize: f1, color: const Color(0xffed3023))),
        //         ],
        //       ),
        //     )),
      ],
    ),
  );
}
