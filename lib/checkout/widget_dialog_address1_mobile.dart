import 'package:bizfull/checkout/widget_dialog_address2_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget dialog1mobile(context) {
  return SizedBox(
    width: 400,
    height: 500,
    child: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, right: 10, left: 10, bottom: 100),
                child: Column(children: [
                  datadialogaddress1mobile(),
                  const SizedBox(height: 15),
                  const Divider(thickness: 1.0),
                  datadialogaddress11mobile(),
                ]),
              ),
            ],
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "ที่อยู่ของฉัน",
                    style:
                        TextStyle(fontSize: 16.0, fontFamily: "Prompt-Medium"),
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 50,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Divider(
                color: Colors.black12,
                height: 1.0,
              )),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 65,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 8, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xffed3023),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ))),
                      onPressed: () {
                        //     Navigator.pop(context);
                        Navigator.of(context).pop();

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
                            content: dialog2mobile(context),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 10, right: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 3),
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "เพิ่มที่อยู่ใหม่",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(31, 143, 143, 143)),
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10.0, left: 30, right: 30),
                          child: const Text(
                            "กลับ",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 65,
              child: Column(
                children: const [
                  Divider(
                    thickness: 1.0,
                    height: 1,
                  ),
                ],
              ),
            ))
      ],
    ),
  );
}

Widget datadialogaddress1mobile() {
  return Padding(
    padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
    child: Column(
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
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 1.5),
                  child: const Icon(
                    FontAwesomeIcons.solidCircleCheck,
                    color: Color(0xffed3023),
                    size: 15,
                  ),
                ),
                const SizedBox(width: 5),
                const Text("ค่าเริ่มต้น",
                    style: TextStyle(fontSize: 13, color: Color(0xffed3023))),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text("ใช้งาน",
                        style: TextStyle(fontSize: 13, color: Colors.black54)),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text("แก้ไข",
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget datadialogaddress11mobile() {
  return Padding(
    padding: const EdgeInsets.only(right: 10, left: 10),
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
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffed3023),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text("ใช้งาน",
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text("แก้ไข",
                        style: TextStyle(fontSize: 13, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
