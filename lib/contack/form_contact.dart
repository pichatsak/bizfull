import 'dart:convert';

import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

class FormContactPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  FormContactPage({Key? key}) : super(key: key);

  @override
  State<FormContactPage> createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {
  final box = GetStorage();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // TextEditingController nameCl = TextEditingController(text: "วาสนา ใจเย็น");
  // TextEditingController emailCl =
  //     TextEditingController(text: "wasna1002@gmail.com");
  // TextEditingController phoneCl = TextEditingController(text: "0854412533");
  // TextEditingController msgCl =
  //     TextEditingController(text: "อยากเป็นสมาชิกกับ bizful");
  TextEditingController nameCl = TextEditingController();
  TextEditingController emailCl = TextEditingController();
  TextEditingController phoneCl = TextEditingController();
  TextEditingController msgCl = TextEditingController();

  void validateSave() {
    if (formKey.currentState!.validate()) {
      setSendContact();
    }
  }

  void setSendContact() async {
    var dataForm = {
      "ctin_name": nameCl.text,
      "ctin_email": emailCl.text,
      "ctin_phone": phoneCl.text,
      "ctin_msg": msgCl.text,
    };
    var url = "${Global.hostName}/send_contact.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    var getData = json.decode(res.body);
    if (getData["status"] == "ok") {
      // ignore: use_build_context_synchronously
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) =>
              dialogSuccessContact(context, "ทางเราจะเร่งตอบกลับโดยไวที่สุด"));
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    }
  }

  @override
  Widget build(BuildContext context) {
    double fM2;
    double fM3;
    double fM4;
    double hS;
    double hS1;
    if (Device.width > 991) {
      fM2 = 18;
      fM3 = 16;
      fM4 = 14;
      hS = 0;
      hS1 = 20;
    } else if (Device.width >= 768 && Device.width <= 991) {
      fM2 = 18;
      fM3 = 16;
      fM4 = 14;
      hS = 20;
      hS1 = 10;
    } else {
      fM2 = 16;
      fM3 = 14;
      fM4 = 13;
      hS = 20;
      hS1 = 10;
    }
    return Form(
      key: formKey,
      child: SizedBox(
        width: 600,
        child: Column(
          children: [
            SizedBox(height: hS),
            Row(
              children: [
                Text(
                  'ติดต่อเจ้าหน้าที่',
                  style: TextStyle(fontSize: fM2, fontFamily: "Prompt-Medium"),
                ),
              ],
            ),
            SizedBox(height: hS1),
            Column(
              children: [
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 1),
                    child: const Icon(
                      FontAwesomeIcons.solidUser,
                      color: Color(0xffa91f2e),
                      size: 14,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text("ชื่อ-นามสกุล", style: TextStyle(fontSize: fM4))
                ]),
                const SizedBox(height: 5),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกชื่อ-นามสกุล";
                    }
                    return null;
                  },
                  controller: nameCl,
                  cursorColor: Colors.red,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black38),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 1),
                    child: const Icon(
                      FontAwesomeIcons.solidEnvelope,
                      color: Color(0xffa91f2e),
                      size: 14,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text("อีเมลของคุณ", style: TextStyle(fontSize: fM4))
                ]),
                const SizedBox(height: 5),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกอีเมล";
                    } else if (!isEmail(val)) {
                      return "รูปแบบอีเมลไม่ถูกต้อง";
                    } else {
                      return null;
                    }
                  },
                  controller: emailCl,
                  cursorColor: Colors.red,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black38),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    child: const Icon(
                      FontAwesomeIcons.mobileButton,
                      color: Color(0xffa91f2e),
                      size: 14,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Text("หมายเลขโทรศัพท์", style: TextStyle(fontSize: fM4))
                ]),
                const SizedBox(height: 5),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกเบอร์โทรศัพท์";
                    } else if (!isLength(val, 9, 32)) {
                      return "กรุณากรอกเบอร์โทรศัพท์ให้ครบ";
                    } else {
                      return null;
                    }
                  },
                  controller: phoneCl,
                  cursorColor: Colors.red,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black38),
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.black12, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text("รายละเอียด",
                    style:
                        TextStyle(fontSize: fM3, fontFamily: "Prompt-Medium")),
              ],
            ),
            Row(
              children: [
                Text("กรอกข้อมูลรายละเอียดที่ต้องการติดต่อ",
                    style: TextStyle(fontSize: fM4)),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: msgCl,
              cursorColor: Colors.red,
              validator: (val) {
                if (val!.isEmpty) {
                  return "กรุณากรอกข้อความ";
                }
                return null;
              },
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Input",
                  hintStyle: TextStyle(color: Colors.black38),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.black12, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  )),
              maxLines: 3,
            ),
            // TextFormField(
            //   cursorColor: Colors.red,
            //   style: const TextStyle(fontSize: 14, color: Colors.black),
            //   decoration: const InputDecoration(
            //       hintText: 'Input',
            //       hintStyle: TextStyle(color: Colors.black38),
            //       isDense: true,
            //       contentPadding: EdgeInsets.fromLTRB(10, 40, 10, 40),
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(7)),
            //         borderSide:
            //             BorderSide(color: Colors.black12, width: 1.0),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(7)),
            //         borderSide:
            //             BorderSide(color: Colors.red, width: 1.0),
            //       )),
            // ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffed3023)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ))),
                  onPressed: () {
                    validateSave();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 8, bottom: 8),
                    child: Row(
                      children: const [
                        Text(
                          "ส่งข้อความติดต่อ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
