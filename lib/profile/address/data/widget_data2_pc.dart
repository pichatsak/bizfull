import 'package:bizfull/profile/address/dialog/widget_dialog_eeit_address.dart';
import 'package:flutter/material.dart';

Widget data2PC(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            const Text("พิเชฐศักดิ์ ดุเหว่า",
                style: TextStyle(fontSize: 14, color: Colors.black)),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width: 1, height: 20, color: Colors.black26)),
            const Text("0932430369",
                style: TextStyle(fontSize: 13, color: Colors.black54))
          ]),
          const SizedBox(
            width: 350,
            child: Text(
                "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                style: TextStyle(fontSize: 13, color: Colors.black54)),
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showDialog<String>(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      contentPadding: const EdgeInsets.only(top: 0.0),
                      content: editdialogaddress(context),
                    ),
                  );
                },
                child: const Text("แก้ไข",
                    style: TextStyle(fontSize: 13, color: Color(0xffed3023))),
              ),
              const SizedBox(width: 10),
              InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      title: const Text('ลบรายการ'),
                      content: const Text('ต้องการลบรายการหรือไม่'),
                      actions: <Widget>[
                        Theme(
                          data: ThemeData(
                              colorSchemeSeed: const Color(0xffed3023),
                              useMaterial3: true,
                              fontFamily: "Prompt"),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('ยกเลิก'),
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                              colorSchemeSeed: const Color(0xffed3023),
                              useMaterial3: true,
                              fontFamily: "Prompt"),
                          child: TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('ตกลง'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("ลบ",
                    style: TextStyle(fontSize: 13, color: Color(0xffed3023))),
              ),
            ],
          ),
          const SizedBox(height: 10),
          InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(7)),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                child: Text("ตั้งเป็นค่าตั้งต้น",
                    style: TextStyle(fontSize: 13, color: Colors.black)),
              ),
            ),
          ),
        ],
      )
    ],
  );
}
