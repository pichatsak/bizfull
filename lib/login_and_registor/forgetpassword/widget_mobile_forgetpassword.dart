import 'package:bizfull/boostrap/boostrap_tool.dart';
import 'package:bizfull/buttonbar/widget_bottom.dart';
import 'package:bizfull/login_and_registor/forgetpassword/widget_bar_forget_mobile.dart';
import 'package:bizfull/nav/mainnav.dart';
import 'package:bizfull/nav/widget_drawble_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Forgetpasswordmobile extends StatefulWidget {
  const Forgetpasswordmobile({Key? key}) : super(key: key);

  @override
  State<Forgetpasswordmobile> createState() => _ForgetpasswordmobileState();
}

var color = Colors.transparent;
String curpagemobile = "login";

class _ForgetpasswordmobileState extends State<Forgetpasswordmobile> {
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
    return Scaffold(drawer: const Drawermenu(),
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(height: hbar),
                BootstrapContainer(
                    fluid: true,
                    decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
                    children: [barforgetpasswordmobile(context)]),
                BootstrapContainer(
                  fluid: true,
                  children: [
                    BootstrapRow(children: <BootstrapCol>[
                      BootstrapCol(
                          sizes: 'col-12',
                          child: SizedBox(
                              //      height: MediaQuery.of(context).size.height-hbar-60,
                              //   color: const Color(0xfff3f3f3)
                              child: Center(child: login1())))
                    ])
                  ],
                ),
              ],
            )),
            const Navmain(),
          ],
        ),
        bottomNavigationBar: Device.width <= 991
            ? bottom(4, context)
            : const SizedBox(
                height: 0,
              ));
  }

  Widget login1() {
    double tR;

    if (Device.width > 991) {
      tR = 40;
    } else if (Device.width >= 768 && Device.width <= 991) {
      tR = 40;
    } else if (Device.width >= 576 && Device.width <= 767) {
      tR = 20;
    } else {
      tR = 20;
    }
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: tR),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //     height: 140,
          //     child: Center(
          //         child: Image.asset(
          //       "images/na.png",
          //       width: 240,
          //     ))),
          // const SizedBox(height: 25),
          // const Text(
          //   "Easy Shipping & shopping",
          //   style: TextStyle(
          //       fontSize: 20,
          //       color: Color(0xff22265a),
          //       fontFamily: "Prompt-ExtraBold"),
          // ),
          // const Text(
          //   "ซัพพอร์ทธุรกิจครบวงจร",
          //   style: TextStyle(
          //       fontSize: 16,
          //       color: Color(0xff22265a),
          //       fontFamily: "Prompt-Medium",
          //       fontWeight: FontWeight.w500),
          // ),
          // const SizedBox(height: 25),
          const Text("ตั้งรหัสผ่านใหม่",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffed3023),
                  fontFamily: "Prompt-Bold")),
          const SizedBox(height: 10),
          const Text("กรอกอีเมลของคุณสำหรับตั้งค่ารหัสผ่านใหม่ :",
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
            onPressed: () => showDialog<String>(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) => AlertDialog(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                contentPadding: const EdgeInsets.only(top: 10.0),
                insetPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 24.0),
                content: SizedBox(
                  width: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Text(
                            "ตั้งรหัสผ่านใหม่",
                            style: TextStyle(
                                fontSize: 18.0, fontFamily: "Prompt-Medium"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      // const Divider(
                      //   color: Colors.grey,
                      //   height: 4.0,
                      // ),
                      Container(
                        height: 1,
                        color: Colors.black26,
                      ),
                      Column(children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 20),
                          child: Icon(
                            FontAwesomeIcons.envelopeCircleCheck,
                            size: 50,
                            color: Color(0xffed3023),
                          ),
                        ),
                        Text(
                          "รหัสยืนยันตัวตนจะถูกส่งไปที่ Email",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "sookma28@gmail.com",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffed3023)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "กรุณายืนยัน",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ]),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xffed3023),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(32),
                                  bottomRight: Radius.circular(32)),
                            ))),
                        // onPressed: () => Navigator.pop(context),
                        onPressed: () =>
                            Navigator.of(context).pushNamed("/login"),
                        child: Container(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: const Text(
                            "ตกลง",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Prompt"),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 35, right: 35),
              child: Text(
                "ต่อไป",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
