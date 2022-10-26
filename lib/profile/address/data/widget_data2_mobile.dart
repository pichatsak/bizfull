import 'package:bizfull/profile/address/dialog/widget_dialog_edit_address_mobile.dart';
import 'package:flutter/material.dart';

Widget data2mobile(context) {
  return Card(
    margin: const EdgeInsets.all(0),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const Text("พิเชฐศักดิ์ ดุเหว่า",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(width: 1, height: 20, color: Colors.black26)),
                const Text("0932430369",
                    style: TextStyle(fontSize: 13, color: Colors.black54))
              ]),
              const SizedBox(
                width: 350,
                child: Text(
                    "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                    style: TextStyle(fontSize: 13, color: Colors.black54)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffed3023)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
                      child: Text("ใช้งาน",
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                    onPressed: () {
                      showDialog<String>(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          insetPadding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 24.0),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          contentPadding: const EdgeInsets.only(top: 0.0),
                          content: dialogeditaddressmobile(context),
                        ),
                      );
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
                      child: Text("แก้ไข",
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffee602e)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ))),
                    onPressed: () {
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
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
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
                    child: const Padding(
                      padding:
                          EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
                      child: Text("ลบ",
                          style: TextStyle(fontSize: 13, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
