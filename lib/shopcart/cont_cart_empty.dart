import 'package:flutter/material.dart';

Widget contCartEmpy() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
        color: Colors.grey.shade100,
        height: 100,
        child: const Center(
          child: Text("ไม่มีสินค้า"),
        )),
  );
}
