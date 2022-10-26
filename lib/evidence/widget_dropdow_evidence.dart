import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final List<String> items = [
  'ธนาคารไทยพาณิชย์',
  'ธนาคารกสิกรไทย',
];
String? selectedValue;
Widget dropdownevidence(setState) {
  double fD;
  double wD;
  double pD;
  double pDR;
  double bD;
  if (Device.width > 1240) {
    fD = 14;
    wD = 580;
    pD = 10;
    pDR = 14;
    bD = double.infinity;
  } else if (Device.width >= 992 && Device.width <= 1240) {
    fD = 14;
    wD = 440;
    pD = 10;
    pDR = 14;
    bD = double.infinity;
  } else {
    fD = 13;
    wD = 250;
    pD = 10;
    pDR = 2;
    bD = double.infinity;
  }
  return Center(
    child: DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        hint: Row(
          children: [
            Expanded(
              child: Text(
                'ธนาคารไทยพาณิชย์',
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
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        icon: const Icon(
          Icons.keyboard_arrow_down,
        ),
        iconEnabledColor: Colors.black,
        iconDisabledColor: Colors.black,
        buttonHeight: 40,
        buttonWidth: bD,
        buttonPadding: EdgeInsets.only(left: pD, right: pDR),
        buttonDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: Colors.black12,
          ),
          color: Colors.white12,
        ),
        itemHeight: 40,
        itemPadding: const EdgeInsets.only(left: 14, right: 14),
        dropdownMaxHeight: 200,
        dropdownWidth: wD,
        dropdownPadding: null,
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
        ),
        dropdownElevation: 8,
        scrollbarRadius: const Radius.circular(7),
        scrollbarThickness: 6,
        scrollbarAlwaysShow: true,
        offset: const Offset(0, 0),
      ),
    ),
  );
}
