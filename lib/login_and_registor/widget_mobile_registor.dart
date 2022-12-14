import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

class Registormobile extends StatefulWidget {
  const Registormobile({Key? key}) : super(key: key);

  @override
  State<Registormobile> createState() => _RegistormobileState();
}

bool _isObscure1 = true;
bool _isObscure2 = true;
var color = Colors.transparent;
String curpagemobile = "login";

class _RegistormobileState extends State<Registormobile> {
  final box = GetStorage();

  TextEditingController nameUser = TextEditingController(text: "นิติพล พงษ์คำ");
  TextEditingController emailUser =
      TextEditingController(text: "ni.tiphon202@gmail.com");
  TextEditingController phoneUser = TextEditingController(text: "0967959507");
  TextEditingController pass1 = TextEditingController(text: "nitiphon1996");
  TextEditingController pass2 = TextEditingController(text: "nitiphon1996");

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void _validate() {
    if (formKey.currentState!.validate()) {
      setRegister();
    }
  }

  Future<void> setRegister() async {
    var dataForm = {
      "user_name": nameUser.text,
      "user_email": emailUser.text,
      "user_password": pass1.text,
      "user_phone": phoneUser.text,
    };
    // print(dataForm);
    var url = "${Global.hostName}/register.php";
    var res = await http.post(Uri.parse(url), body: dataForm);
    var getData = json.decode(res.body);
    if (getData["status"] == "ok") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogSuccessRegis(context, "เข้าสู่ระบบเพื่อใช้งานได้"));
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "เกิดข้อมูลผิดผลาดกรุณาลองใหม่อีกครั้ง"));
    } else if (getData["status"] == "repleat") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "บัญชีนี้มีอยู่ในระบบแล้ว"));
    }
  }

  @override
  void initState() {
    box.write("curpage", "login");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h5;
    double hbar;
    if (Device.width >= 768 && Device.width <= 991) {
      h5 = 0;
      hbar = 119;
    } else if (Device.width >= 450 && Device.width <= 767) {
      h5 = 0;
      hbar = 70;
    } else {
      h5 = 154;
      hbar = 70;
    }
    return Scaffold(drawer: const Drawermenu(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height + h5,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(height: hbar),
                    BootstrapContainer(
                      fluid: false,
                      children: [
                        BootstrapRow(children: <BootstrapCol>[
                          BootstrapCol(
                              sizes: 'col-12',
                              child: SizedBox(

                                  // color: const Color(0xfff3f3f3),
                                  child: register1()))
                        ])
                      ],
                    ),
                  ],
                )),
              ),
              const Navmain(),
            ],
          ),
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(4, context)
            : const SizedBox(
                height: 0,
              ));
  }

  Widget register1() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 140,
                child: Center(
                    child: Image.asset(
                  "images/na.png",
                  width: 240,
                ))),
            const SizedBox(height: 25),
            const Text(
              "Easy Shipping & shopping",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff22265a),
                  fontFamily: "Prompt-ExtraBold"),
            ),
            const Text(
              "ซัพพอร์ทธุรกิจครบวงจร",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff22265a),
                  fontFamily: "Prompt-Medium",
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            const Text("สมัครสมาชิก",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffed3023),
                    fontFamily: "Prompt-Bold")),
            const SizedBox(height: 10),
            const Text("กรอกข้อมูลสำหรับการสร้างบัญชีของคุณ :",
                style: TextStyle(fontSize: 14, color: Colors.black)),
            const SizedBox(height: 25),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  controller: nameUser,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    labelText: 'ชื่อผู้ใช้',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกชื่อผู้ใช้";
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  controller: emailUser,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    labelText: 'อีเมล',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.mail_outline,
                    ),
                  ),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกอีเมล";
                    } else if (!isEmail(val)) {
                      return "รูปแบบอีเมลไม่ถูกต้อง";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: phoneUser,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกเบอร์โทรศัพท์";
                    } else if (!isLength(val, 8, 32)) {
                      return "กรุณากรอกเบอร์โทรศัพท์ให้ครบ";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    labelText: 'เบอร์โทรศัพท์',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  obscureText: _isObscure1,
                  controller: pass1,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกรหัสผ่าน";
                    } else if (!isLength(val, 8, 32)) {
                      return "กรุณากรอกขั้นต่ำ 8 ตัวอักษร";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    prefixIcon: const Icon(
                      Icons.key_outlined,
                    ),
                    labelText: 'รหัสผ่าน',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  obscureText: _isObscure2,
                  controller: pass2,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกรหัสผ่าน";
                    } else if (!isLength(val, 8, 32)) {
                      return "กรุณากรอกขั้นต่ำ 8 ตัวอักษร";
                    } else if (val != pass1.text) {
                      return "รหัสผ่านไม่ตรงกัน";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    prefixIcon: const Icon(
                      Icons.key_outlined,
                    ),
                    labelText: 'ยืนยันรหัสผ่าน',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      highlightColor: color,
                      splashColor: color,
                      hoverColor: color,
                      icon: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure2 = !_isObscure2;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xffaa1f2e),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ))),
              onPressed: () {
                _validate();
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, left: 25, right: 25),
                child: Text(
                  "สมัครสมาชิก",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("มีบัญชีอยู่แล้ว?",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  highlightColor: color,
                  splashColor: color,
                  hoverColor: color,
                  child: const Text("เข้าสู่ระบบ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffed3023),
                          fontFamily: "Prompt-Medium")),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
