import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget babymmright() {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Column(
      children: [
        TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(fontSize: 14, color: Colors.black),
          decoration: const InputDecoration(
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black54,
              ),
              hintText: 'ค้นหา หัวข้อ,คำถาม...',
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(10, 13, 10, 13),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              )),
        ),
        const SizedBox(height: 20),
        Row(
          children: const [
            Text("หัวข้อที่เกี่ยวข้อง",
                style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium")),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "คำถามที่พบบ่อยเกี่ยวกับบัญชี",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "ฉันจะลงทะเบียนเพื่อสมัครบัญชีลาซาด้าได้อย่างไร",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "วิธีการยืนยันตัวตนเมื่อเข้าสู่ระบบ",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "วิธีเปลี่ยนภาษา",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          width: double.infinity,
          child: Text(
            "คำแนะนำการใช้งาน CLEO (แชทบอทคลีโอ)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Text(
              "เพิ่มเติม",
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 1),
                child: const Icon(
                  FontAwesomeIcons.chevronDown,
                  size: 10,
                  color: Colors.red,
                ))
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: const [
            Text(
              "แจ้งปัญหาการใช้งานเพิ่มเติม?",
              style: TextStyle(fontSize: 16, fontFamily: "Prompt-Medium"),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
              color: const Color(0xfff3f3f3),
              borderRadius: BorderRadius.circular(5)),
          child: ListTile(
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: const Color.fromARGB(90, 240, 173, 181)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0),
                  child: const Icon(
                    FontAwesomeIcons.envelope,
                    color: Color(0xffa91f2e),
                    size: 16,
                  ),
                ),
              ),
            ),
            title: const Text(
              'Email',
              style: TextStyle(fontSize: 14),
            ),
            subtitle: const Text(
              'แจ้งปัญหาเพิ่มเติม',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),
      ],
    ),
  );
}
