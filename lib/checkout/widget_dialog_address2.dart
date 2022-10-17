import 'package:bizfull/checkout/widget_dialog_address1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget dialog2(context, addressradio, setState) {
  return SizedBox(
    width: 500,
    height: 552,
    child: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, right: 20, left: 20, bottom: 30),
                child: Column(children: [
                  datadialogaddress2(),
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
                    "ที่อยู่ใหม่",
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
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Material(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(7),
                      onTap: () {
                        Navigator.pop(context);
                        showDialog<String>(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                              contentPadding: const EdgeInsets.only(top: 0.0),
                              content:
                                  dialog1(context, addressradio, setState)),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(7),
                            color: const Color.fromARGB(31, 143, 143, 143)),
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 30, right: 30),
                        child: const Text(
                          "ยกเลิก",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
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
                      Navigator.pop(context);
                      showDialog<String>(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            contentPadding: const EdgeInsets.only(top: 0.0),
                            content: dialog1(context, addressradio, setState)),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 20, right: 20),
                      child: const Text(
                        "ยืนยัน",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]),
              ),
            )),
        Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 65,
              child: Column(
                children: const [
                  Divider(
                    color: Colors.black12,
                    height: 1.0,
                  )
                ],
              ),
            ))
      ],
    ),
  );
}

Widget datadialogaddress2() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        SizedBox(
          height: 40,
          child: Theme(
            data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
            child: const TextField(
              cursorColor: Colors.red,
              style: TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                  suffixIcon: Icon(FontAwesomeIcons.solidUser, size: 15),
                  contentPadding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  hintText: "ชื่อ-นามสกุล",
                  hintStyle: TextStyle(color: Colors.black38),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  )),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 40,
          child: Theme(
            data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
            child: const TextField(
              cursorColor: Colors.red,
              style: TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                  suffixIcon: Icon(FontAwesomeIcons.phone, size: 14),
                  contentPadding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  hintText: "หมายเลขโทรศัพท์",
                  hintStyle: TextStyle(color: Colors.black38),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  )),
              maxLines: 1,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 7.5),
                child: SizedBox(
                  height: 40,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
                    child: const TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          hintText: "บ้านเลขที่",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1.0),
                          )),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 7.5),
                child: SizedBox(
                  height: 40,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
                    child: const TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          hintText: "จังหวัด",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1.0),
                          )),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 7.5),
                child: SizedBox(
                  height: 40,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
                    child: const TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          hintText: "เขต/อำเภอ",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1.0),
                          )),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 7.5),
                child: SizedBox(
                  height: 40,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
                    child: const TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          hintText: "รหัสไปรษณีย์",
                          hintStyle: TextStyle(color: Colors.black38),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.black12, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1.0),
                          )),
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        SizedBox(
          child: Theme(
            data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
            child: const TextField(
              cursorColor: Colors.red,
              style: TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
                  hintText: "รายละเอียด",
                  hintStyle: TextStyle(color: Colors.black38),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  )),
              maxLines: 3,
            ),
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 80,
                child: Padding(
                    padding: const EdgeInsets.only(right: 7.5),
                    child: Column(
                      children: [
                        Row(children: const [
                          Text(
                            "ติดป้ายเป็น :",
                            style: TextStyle(fontSize: 14),
                          )
                        ]),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xffed3023)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 6, top: 6),
                                child: Text(
                                  "บ้าน",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xffed3023)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 6, top: 6),
                                child: Text(
                                  "ที่ทำงาน",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 7.5, top: 5),
                child: SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffed3023)),
                                borderRadius: BorderRadius.circular(3),
                                color: const Color(0xffed3023)),
                          ),
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(bottom: 2, left: 1),
                                  child: const Icon(
                                    FontAwesomeIcons.check,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "เลือกเป็นที่อยู่ตั้งต้น",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
