import 'package:bizfull/boostrap/boostrap_tool.dart';

import 'package:flutter/material.dart';

bool _isObscure2 = true;
bool _isObscure1 = true;
final username = TextEditingController(text: "sssss");
var color = Colors.transparent;
Widget registor(setState) {
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
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffaa1f2e),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 53, right: 53),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("สร้างบัญชีผู้ใช้",
                        style: TextStyle(
                            fontSize: 35,
                            color: Color(0xffed3023),
                            fontFamily: "Prompt-Bold")),
                    const SizedBox(height: 30),
                    const Text("กรอกข้อมูลสำหรับการสร้างบัญชีของคุณ :",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: 400,
                      child: Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red, fontFamily: "Prompt"),
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
                            ),
                          ),
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
                        data: ThemeData(
                            primarySwatch: Colors.red, fontFamily: "Prompt"),
                        child: TextFormField(
                          obscureText: _isObscure1,
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
                                _isObscure1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                        data: ThemeData(
                            primarySwatch: Colors.red, fontFamily: "Prompt"),
                        child: TextFormField(
                          obscureText: _isObscure2,
                          initialValue: '123456',
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding:
                                const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                                _isObscure2
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffaa1f2e),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 40, right: 40),
                        child: Text(
                          "สมัครสมาชิก",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 0),
                  child: Text(
                    "*สมัครสมาชิก ยืนยันตัวตนทาง Email เข้าใช้งานได้ทันที*",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ))
  ]);
}
