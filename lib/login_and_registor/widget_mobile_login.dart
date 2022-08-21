import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Loginmobile extends StatefulWidget {
  const Loginmobile({Key? key}) : super(key: key);

  @override
  State<Loginmobile> createState() => _LoginmobileState();
}

bool _isObscure = true;

var color = Colors.transparent;
String curpagemobile = "login";

class _LoginmobileState extends State<Loginmobile> {
  final username = TextEditingController(text: "sssss");
  final usernameRegis = TextEditingController(text: "123456");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: BootstrapContainer(
          fluid: false,
          children: [
            BootstrapRow(children: <BootstrapCol>[
              BootstrapCol(
                  sizes: 'col-12',
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                      color: const Color(0xfff3f3f3), child: login1()))
            ])
          ],
        )),
        bottomNavigationBar: Device.width <= 991
            ? bottom()
            : const SizedBox(
                height: 0,
              ));
  }

  Widget login1() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                initialValue: 'sookma28@gmail.com',
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
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                obscureText: _isObscure,
                initialValue: '123456',
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
          const SizedBox(height: 40),
          InkWell(
            onTap: () {},
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
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffaa1f2e),
                borderRadius: BorderRadius.circular(15)),
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 53, right: 53),
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
    );
  }
}
