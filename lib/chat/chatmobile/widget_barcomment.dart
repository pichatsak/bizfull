import 'package:flutter/material.dart';

Widget barcomment() {
  return Container(
    height: 75,
    decoration: BoxDecoration(color: const Color(0xfffafafa), boxShadow: [
      BoxShadow(
          spreadRadius: 0,
          blurRadius: 4,
          color: const Color(0xFF000000).withOpacity(.2),
          offset: const Offset(0, 0))
    ]),
    child: Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xfffafafa),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 15),
              const Icon(
                Icons.image,
                color: Color(0xffed3023),
              ),
              const SizedBox(width: 15),
              const Icon(
                Icons.attach_file,
                color: Color(0xffed3023),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: TextFormField(
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 20, right: 15, bottom: 5),
                    hintText: 'พิมพ์ข้อความ . . .',
                    hintStyle:
                        const TextStyle(color: Colors.black54, fontSize: 15),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    //  enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(15)),
                    //         borderSide:
                    //             BorderSide(color: Colors.red, width: 1.0),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(15)),
                    //         borderSide:
                    //             BorderSide(color: Colors.red, width: 1.0),
                    //       ),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const Icon(
                Icons.send,
                color: Color(0xffed3023),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    ),
  );
}
