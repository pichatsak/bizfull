import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var color = Colors.transparent;
Widget dataforgetpassword(setState, context) {
  return BootstrapRow(children: <BootstrapCol>[
    BootstrapCol(
      sizes: 'col-6',
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 20, bottom: 20),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
            right: BorderSide(
              width: 0.7,
              color: Colors.black26,
            ),
          )),
          child: Column(
            children: [
              SizedBox(
                height: 370,
                child: Center(
                    child: Image.asset(
                  "images/na.png",
                  width: 240,
                )),
              ),
              SizedBox(
                height: 260,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Easy Shipping & shopping",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff22265a),
                              fontFamily: "Prompt-ExtraBold"),
                        ),
                        const Text(
                          "ซัพพอร์ทธุรกิจครบวงจร",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff22265a),
                              fontFamily: "Prompt-Medium",
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xffaa1f2e),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                // side: BorderSide(color: Colors.white)
                              ))),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/login");
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 8, bottom: 8, left: 48, right: 48),
                            child: Text(
                              "เข้าสู่ระบบ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Text(
                        "*สมัครสมาชิก ยืนยันตัวตนทาง Email เข้าใช้งานได้ทันที*",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    BootstrapCol(
        sizes: 'col-6',
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: SizedBox(
            height: 630,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("ตั้งรหัสผ่านใหม่",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xffed3023),
                        fontFamily: "Prompt-Bold")),
                const SizedBox(height: 30),
                const Text("กรอกอีเมลของคุณสำหรับตั้งค่ารหัสผ่านใหม่ :",
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                const SizedBox(height: 25),
                SizedBox(
                  width: 400,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
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
                        // side: BorderSide(color: Colors.white)
                      ))),
                  onPressed: () => showDialog<String>(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(32.0))),
                      //  title: const Text('ตั้งรหัสผ่านใหม่'),
                      contentPadding: const EdgeInsets.only(top: 10.0),
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
                                      fontSize: 18.0,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Divider(
                              color: Colors.grey,
                              height: 4.0,
                            ),
                            // const Padding(
                            //   padding:
                            //       EdgeInsets.only(left: 30.0, right: 30.0),
                            //   child: TextField(
                            //     decoration: InputDecoration(
                            //       hintText: "Add Review",
                            //       border: InputBorder.none,
                            //     ),
                            //     maxLines: 8,
                            //   ),
                            // ),
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
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffed3023)),
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
                              onPressed: () => Navigator.pop(context),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
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
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 48, right: 48),
                    child: Text(
                      "ต่อไป",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: ButtonStyle(
                //       backgroundColor: MaterialStateProperty.all(
                //         const Color(0xffaa1f2e),
                //       ),
                //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //           RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15.0),
                //         // side: BorderSide(color: Colors.white)
                //       ))),
                //   onPressed: () {},
                //   child: const Padding(
                //     padding:
                //         EdgeInsets.only(top: 8, bottom: 8, left: 48, right: 48),
                //     child: Text(
                //       "ต่อไป",
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ))
  ]);
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
