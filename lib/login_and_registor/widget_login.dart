import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

bool _isObscure = true;

var color = Colors.transparent;
Widget login(setState,context) {
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
                          onPressed: () {Navigator.of(context).pushNamed("/registor");},
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 8, bottom: 8, left: 35, right: 35),
                            child: Text(
                              "สมัครสมาชิก",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //       color: const Color(0xffaa1f2e),
                        //       borderRadius: BorderRadius.circular(15)),
                        //   child: const Padding(
                        //     padding: EdgeInsets.only(
                        //         top: 8, bottom: 8, left: 40, right: 40),
                        //     child: Text(
                        //       "สมัครสมาชิก",
                        //       style: TextStyle(
                        //         fontSize: 18,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // )
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
                const Text("ลงชื่อเข้าใช้งาน",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xffed3023),
                        fontFamily: "Prompt-Bold")),
                const SizedBox(height: 30),
                const Text("กรอกอีเมลและรหัสผ่านของคุณ :",
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
                const SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  child: Theme(
                    data: ThemeData(
                        primarySwatch: Colors.red, fontFamily: "Prompt"),
                    child: TextFormField(
                      obscureText: _isObscure,
                      initialValue: '123456',
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding:
                            const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                  onTap: () {Navigator.of(context).pushNamed("/forgetpassword");},
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
                  onPressed: () {},
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 48, right: 48),
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //       color: const Color(0xffaa1f2e),
                  //       borderRadius: BorderRadius.circular(15)),
                  //   child: const Padding(
                  //     padding:
                  //         EdgeInsets.only(top: 8, bottom: 8, left: 53, right: 53),
                  //     child: Text(
                  //       "เข้าสู่ระบบ",
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ))
  ]);
}
