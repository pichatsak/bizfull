import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
  @override
  void initState() {
    box.write("curpage", "login");
    super.initState();
  }

  final username = TextEditingController(text: "sssss");
  final usernameRegis = TextEditingController(text: "123456");
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
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                initialValue: 'pichatsak duwao',
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  labelText: 'ชื่อผู้ใช้',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
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
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 400,
            child: Theme(
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                initialValue: '0932430369',
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
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                obscureText: _isObscure1,
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
              data: ThemeData(primarySwatch: Colors.red, fontFamily: "Prompt"),
              child: TextFormField(
                obscureText: _isObscure2,
                initialValue: '123456',
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
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 25, right: 25),
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
    );
  }
}
