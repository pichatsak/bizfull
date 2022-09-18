// ignore_for_file: avoid_unnecessary_containers

import 'package:bizfull/delively/main_delively.dart';
import 'package:bizfull/profile/historysuc/widget_menushow.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color(0xfffafafa),
        child: ListView(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.only(top: 30),
            //   child: Container(
            //       child: Image.asset(
            //     "images/logo1.png",
            //     width: 80,
            //     height: 60,
            //   )),
            // ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(children: const [
                    Text("รายละเอียดสินค้า",
                        style: TextStyle(
                            fontSize: 15, fontFamily: "Prompt-Medium"))
                  ]),
                  Row(children: const [
                    Text("หมายเลขสั่งซื้อ : ", style: TextStyle(fontSize: 13)),
                    Text("000001",
                        style: TextStyle(
                            fontSize: 13, color: Color.fromARGB(165, 0, 0, 0)))
                  ]),
                  Row(children: const [
                    Text("เมื่อ : ", style: TextStyle(fontSize: 13)),
                    Text("30/8/2565 เวลา 19.42 น.",
                        style: TextStyle(
                            fontSize: 13, color: Color.fromARGB(165, 0, 0, 0)))
                  ]),
                  Row(children: const [
                    Text("ทั้งหมด : ", style: TextStyle(fontSize: 13)),
                    Text("2 รายการ",
                        style: TextStyle(
                            fontSize: 13, color: Color.fromARGB(165, 0, 0, 0)))
                  ]),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("ที่อยู่จัดส่ง : ",
                            style: TextStyle(fontSize: 13)),
                        Flexible(
                          child: Text(
                              "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(165, 0, 0, 0))),
                        )
                      ]),
                  Row(children: const [
                    Text("ยอดรวม : ", style: TextStyle(fontSize: 13)),
                    Text("฿3,900.00",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffed3023)))
                  ]),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        "ได้รับสินค้าแล้ว",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff18baa5),
                            fontFamily: "Prompt-Medium"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                         Navigator.of(context).pushNamed("/delively");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff2e3192),
                              borderRadius: BorderRadius.circular(3)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            child: Text(
                              "รายละเอียดการจัดส่ง",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(height: 1, color: Colors.black12),
                  const SizedBox(height: 10),
                  menushowhissuc(),
                  menushowhissuc(),
                  menushowhissuc(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      // InkWell(
      //   onTap: onClicked,
      //   child:
      Container(
        padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            // CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
            // SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  email,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            // Spacer(),
            // CircleAvatar(
            //   radius: 24,
            //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
            //   child: Icon(Icons.add_comment_outlined, color: Colors.white),
            // )
          ],
        ),
      );
  // );

  Widget buildSearchField() {
    const color = Colors.black;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.black12;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color, fontSize: 16)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      // case 0:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => Homepage(),
      //   ));
      //   break;

    }
  }
}
