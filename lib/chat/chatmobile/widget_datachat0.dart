import 'package:flutter/material.dart';

Widget datachat0() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: SingleChildScrollView(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black26, borderRadius: BorderRadius.circular(90)),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 3),
              child: Text("พฤ. 25 ส.ค.",
                  style: TextStyle(fontSize: 11, color: Colors.white)),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 100),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("15.57",
                          style:
                              TextStyle(fontSize: 11, color: Colors.black45)),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color:const  Color(0xffed3023),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Flexible(
                              child: Text("สอบถามข้อมูลหน่อยครับ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
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
        Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 100, left: 20),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 2, left: 5),
                              child: Text("ADMIN",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black45)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(31, 26, 26, 26),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Flexible(
                                  child: Text("Bizfull สวัสดีค่ะ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("15.58",
                            style:
                                TextStyle(fontSize: 11, color: Colors.black45)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 100),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("15.58",
                          style:
                              TextStyle(fontSize: 11, color: Colors.black45)),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color:const  Color(0xffed3023),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Flexible(
                              child: Text("ขอปรึกษาเรื่องการซื้อสินค้าหน่อยครับ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
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
        Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 100, left: 20),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 2, left: 5),
                              child: Text("ADMIN",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black45)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(31, 26, 26, 26),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Flexible(
                                  child: Text(
                                      "สนใจสินค้าประเภทไหนเป็นพิเศษค่ะ หรือส่งรูปให้ทาง ADMIN ดูก็ได้ค่ะ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("15.59",
                            style:
                                TextStyle(fontSize: 11, color: Colors.black45)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 100),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("16.00",
                          style:
                              TextStyle(fontSize: 11, color: Colors.black45)),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Container(
                          decoration: BoxDecoration(
                              color:const  Color(0xffed3023),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Flexible(
                              child: Text("แปปนะครับ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white)),
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
        Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 100, left: 20),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 2, left: 5),
                              child: Text("ADMIN",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black45)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(31, 26, 26, 26),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Flexible(
                                  child: Text("ค่ะ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("15.61",
                            style:
                                TextStyle(fontSize: 11, color: Colors.black45)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 100),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("16.01",
                          style:
                              TextStyle(fontSize: 11, color: Colors.black45)),
                      const SizedBox(width: 10),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'images/na.png',
                            width: 200,
                            filterQuality: FilterQuality.high,
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
        Padding(
          padding:
              const EdgeInsets.only(top: 5, bottom: 5, right: 100, left: 20),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 2, left: 5),
                              child: Text("ADMIN",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.black45)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(31, 26, 26, 26),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Flexible(
                                  child: Text("ตรวจสอบสินค้าสักครู่นะค่ะ",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const Text("16.02",
                            style:
                                TextStyle(fontSize: 11, color: Colors.black45)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 100),
          child: Flexible(
            child: Row(
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("16.03",
                          style:
                              TextStyle(fontSize: 11, color: Colors.black45)),
                      const SizedBox(width: 10),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'images/1.jpg',
                            filterQuality: FilterQuality.high,
                            width: 200,
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
        
        const SizedBox(height: 65),
      ],
    )),
  );
}