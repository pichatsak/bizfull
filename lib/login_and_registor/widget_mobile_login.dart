import 'dart:convert';

import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/dialog/dialog_alert.dart';
import 'package:bizfull/global.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;
import 'package:validators/validators.dart';

class Loginmobile extends StatefulWidget {
  const Loginmobile({Key? key}) : super(key: key);

  @override
  State<Loginmobile> createState() => _LoginmobileState();
}

bool _isObscure = true;

var color = Colors.transparent;
String curpagemobile = "login";

class _LoginmobileState extends State<Loginmobile> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email =
      TextEditingController(text: 'ni.tiphon202@gmail.com');
  TextEditingController pass = TextEditingController(text: "nitiphon1996");

  final box = GetStorage();
  void _validate() {
    if (formKey.currentState!.validate()) {
      setLogin();
    }
  }

  Future<void> setLogin() async {
    var url =
        "${Global.hostName}/login.php?email=${email.text}&pass=${pass.text}";
    var res = await http.get(Uri.parse(url));
    var getData = json.decode(res.body);
    if (getData["status"] == "ok") {
      box.write("login", true);
      box.write("user_id", getData["data"]["user_id"]);
      box.write("user_email", getData["data"]["user_email"]);
      box.write("user_name", getData["data"]["user_name"]);
      box.write("user_phone", getData["data"]["user_phone"]);
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, "/");
    } else if (getData["status"] == "no") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "ไม่พบผู้ใช้นี้ในระบบ"));
    } else if (getData["status"] == "nopassword") {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) =>
              dialogErrAll(context, "รหัสผ่านไม่ถูกต้อง"));
    }
  }

  @override
  void initState() {
    box.write("curpage", "login");
    super.initState();
  }

  final username = TextEditingController(text: "sssss");
  final usernameRegis = TextEditingController(text: "123456");
  @override
  Widget build(BuildContext context) {
    double hbar;

    if (Device.width > 991) {
      hbar = 119;
    } else if (Device.width >= 768 && Device.width <= 991) {
      hbar = 70;
    } else if (Device.width >= 576 && Device.width <= 767) {
      hbar = 70;
    } else {
      hbar = 70;
    }
    return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    SizedBox(height: hbar),
                    BootstrapContainer(
                      fluid: true,
                      children: [
                        BootstrapRow(children: <BootstrapCol>[
                          BootstrapCol(
                              sizes: 'col-12',
                              child: SizedBox(

                                  //   color: const Color(0xfff3f3f3)
                                  child: login1()))
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

  Widget login1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
            const Text("ลงชื่อเข้าใช้งาน",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffed3023),
                    fontFamily: "Prompt-Bold")),
            const SizedBox(height: 10),
            const Text("กรอกอีเมลและรหัสผ่านของคุณ :",
                style: TextStyle(fontSize: 14, color: Colors.black)),
            const SizedBox(height: 25),
            SizedBox(
              width: 400,
              child: Theme(
                data:
                    ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
                child: TextFormField(
                  controller: email,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกอีเมล";
                    } else if (!isEmail(val)) {
                      return "รูปแบบอีเมลไม่ถูกต้อง";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      labelText: 'อีเมล',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                      )),
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
                  obscureText: _isObscure,
                  controller: pass,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "กรุณากรอกรหัสผ่าน";
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
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/forgetpassword");
              },
              highlightColor: color,
              splashColor: color,
              hoverColor: color,
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 1, // space between underline and text
                ),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Color(0xffed3023), // Text colour here
                  width: 1, // Underline width
                ))),
                child: const Text("ลืมรหัสผ่านใช่ไหม?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffed3023),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xffaa1f2e),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    // side: BorderSide(color: Colors.white)
                  ))),
              onPressed: () {
                _validate();
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, left: 35, right: 35),
                child: Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ยังไม่มีบัญชีใช่ไหม?",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed("/registor");
                  },
                  highlightColor: color,
                  splashColor: color,
                  hoverColor: color,
                  child: const Text("สมัครสมาชิก",
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
