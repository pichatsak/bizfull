// ignore_for_file: avoid_unnecessary_containers

import 'package:bizfull/profile/historysuc/widget_menushow.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final padding = const EdgeInsets.symmetric(horizontal: 0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0),
          topLeft: Radius.circular(0),
          // topRight: Radius.circular(10),
          // bottomRight: Radius.circular(10),
        ),
        child: Drawer(
          child: Material(
            //   color: const Color(0xfffafafa),

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
                      Card(
                        // shape: const RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        // ),
                        margin:
                            const EdgeInsets.only(left: 0, right: 0, top: 0),
                        elevation: 4,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/b_nav.png"),
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.high)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              children: [
                                const SizedBox(height: 12),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("รายละเอียดสินค้า",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "Prompt-Medium",
                                              color: Colors.white))
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          Row(children: const [
                                            Text("หมายเลขสั่งซื้อ : ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                )),
                                            Text("000001",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    //  color: Color.fromARGB(165, 0, 0, 0)
                                                    color: Color.fromARGB(
                                                        165, 0, 0, 0)))
                                          ]),
                                          Row(children: const [
                                            Text("เมื่อ : ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                )),
                                            Text("30/8/2565 เวลา 19.42 น.",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        165, 0, 0, 0)))
                                          ]),
                                          Row(children: const [
                                            Text("ทั้งหมด : ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                )),
                                            Text("2 รายการ",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        165, 0, 0, 0)))
                                          ]),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                Text("ที่อยู่จัดส่ง : ",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.black,
                                                    )),
                                                Flexible(
                                                  child: Text(
                                                      "193 หมู่ 6 ตำบล ดงเจน อำเภอ ภูกามยาว จังหวัด พะยา 56000 อำเภอภูกามยาว, จังหวัดพะเยา, 56000",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          color: Color.fromARGB(
                                                              165, 0, 0, 0))),
                                                )
                                              ]),
                                          Row(children: const [
                                            Text("ยอดรวม : ",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                )),
                                            Text("฿3,900.00",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xffed3023)))
                                          ]),
                                          const SizedBox(height: 0),
                                          Row(
                                            children: const [
                                              Text("สถานะสั่งซื้อ : ",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black,
                                                  )),
                                              Text(
                                                "ได้รับสินค้าแล้ว",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xff18baa5),
                                                    // color: Colors.black,
                                                    fontFamily:
                                                        "Prompt-Medium"),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  minimumSize: Size.zero,
                                                  backgroundColor:
                                                      const Color(0xff2e3192),
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 0,
                                                          right: 0,
                                                          top: 8,
                                                          bottom: 8),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  Navigator.of(context)
                                                      .pushNamed("/delively");
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      top: 8,
                                                      bottom: 8),
                                                  child: Text(
                                                    "รายละเอียดการจัดส่ง",
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 15),
                                //     Container(height: 1, color: Colors.black12),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          children: [
                            menushowhissuc(),
                            menushowhissuc(),
                            menushowhissuc(),
                            const SizedBox(height: 15),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
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
