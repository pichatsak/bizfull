import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final List<String> items = [
  'ต่ำสุด',
  'สูงสุด',
];
Widget dropdownsell(setState, String? selectedValuePrice,
    void Function(String val) updateSelectPrice) {
  double fD;
  double wD;
  double pD;
  double pDR;
  double bD;
  if (Device.width > 991) {
    fD = 14;
    wD = 90;
    pD = 14;
    pDR = 14;
    bD = 160;
  } else {
    fD = 13;
    wD = 70;
    pD = 10;
    pDR = 2;
    bD = 110;
  }
  return Center(
    child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                'ราคา',
                style: TextStyle(
                  fontSize: fD,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: fD,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
            .toList(),
        value: selectedValuePrice,
        onChanged: (value) {
          updateSelectPrice(value as String);
        },
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: 50,
        buttonWidth: bD,
        buttonPadding: EdgeInsets.only(left: pD, right: pDR),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          // border: Border.all(
          //   color: Colors.black26,
          // ),
          color: Colors.white12,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: wD,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(3),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(0, 0),
      ),
    ),
  );
}
