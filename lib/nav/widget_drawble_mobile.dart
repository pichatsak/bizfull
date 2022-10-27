// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawermenu extends StatefulWidget {
  const Drawermenu({Key? key}) : super(key: key);

  @override
  State<Drawermenu> createState() => _DrawermenuState();
}

class _DrawermenuState extends State<Drawermenu> {
  final padding = const EdgeInsets.symmetric(horizontal: 0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0),
          topLeft: Radius.circular(0),
        ),
        child: Drawer(
          child: Material(
            // color: const Color(0xfffafafa),
            child: ListView(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/dr.png"),
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high)),
                      padding: padding,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 30, bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              width: 146.15,
                              height: 46.73,
                              child: Image.asset("images/loconew.png",
                                  filterQuality: FilterQuality.high),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "พิเชฐศักดิ์ ดุเหว่า",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Text(
                              "sookma28@gmail.com",
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 13),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 3),
                            child: const Icon(
                              FontAwesomeIcons.xmark,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).pushNamed("/");
                        },
                        child: SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.house,
                                      size: 16,
                                      color: Color(0xffed3023),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    "หน้าแรก",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: "Prompt-Medium"),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(height: 7),
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.of(context).pushNamed("/delively");
                        },
                        child: SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.truckFast,
                                      size: 16,
                                      color: Color(0xffed3023),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    "ติดตามสถานะ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: "Prompt-Medium"),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(height: 2),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red,
                            dividerColor: Colors.transparent,
                            fontFamily: "Prompt"),
                        child: ListTileTheme(
                          contentPadding:
                              const EdgeInsets.only(right: 5, left: 7),
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            iconColor: const Color(0xffed3023),
                            backgroundColor: const Color(0xfffafafa),
                            maintainState: true,
                            title: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffed3023),
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      "images/Bizfull.png",
                                      width: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 19,
                                ),
                                const Text(
                                  'บิซฟูล',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            collapsedIconColor: Colors.black87,
                            collapsedBackgroundColor: const Color(0xfffafafa),
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 0.0),
                                visualDensity: const VisualDensity(
                                  horizontal: 0,
                                  vertical: -4,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.of(context).pushNamed("/about");
                                    },
                                    child: const Text(
                                      'เกี่ยวกับเรา',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 0.0),
                                  visualDensity: const VisualDensity(
                                      horizontal: 0, vertical: -1),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.of(context)
                                            .pushNamed("/contack");
                                      },
                                      child: const Text(
                                        'ติดต่อเรา',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Prompt-Medium"),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red,
                            dividerColor: Colors.transparent,
                            fontFamily: "Prompt"),
                        child: ListTileTheme(
                          contentPadding:
                              const EdgeInsets.only(right: 5, left: 7),
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            iconColor: const Color(0xffed3023),
                            backgroundColor: const Color(0xfffafafa),
                            maintainState: true,
                            title: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 2),
                                  child: const Icon(
                                    FontAwesomeIcons.solidHandshake,
                                    color: Color(0xffed3023),
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 21,
                                ),
                                const Text(
                                  'บริการ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            collapsedIconColor: Colors.black87,
                            collapsedBackgroundColor: const Color(0xfffafafa),
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 0.0),
                                visualDensity: const VisualDensity(
                                  horizontal: 0,
                                  vertical: -4,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.of(context)
                                          .pushNamed("/internationalshipping");
                                    },
                                    child: const Text(
                                      'บริการของเรา',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 0.0),
                                  visualDensity: const VisualDensity(
                                      horizontal: 0, vertical: -1),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.of(context)
                                            .pushNamed("/terms");
                                      },
                                      child: const Text(
                                        'เงื่อนไขการใช้งาน',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Prompt-Medium"),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red,
                            dividerColor: Colors.transparent,
                            fontFamily: "Prompt"),
                        child: ListTileTheme(
                          contentPadding:
                              const EdgeInsets.only(right: 5, left: 7),
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            iconColor: const Color(0xffed3023),
                            backgroundColor: const Color(0xfffafafa),
                            maintainState: true,
                            title: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: const Icon(
                                    FontAwesomeIcons.rightLeft,
                                    color: Color(0xffed3023),
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 21,
                                ),
                                const Text(
                                  'อัตราเเลกเปลี่ยน',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            collapsedIconColor: Colors.black87,
                            collapsedBackgroundColor: const Color(0xfffafafa),
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 0.0),
                                visualDensity: const VisualDensity(
                                  horizontal: 0,
                                  vertical: -4,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.of(context).pushNamed("/rate");
                                    },
                                    child: const Text(
                                      'อัตราแลกเปลี่ยน',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 0.0),
                                  visualDensity: const VisualDensity(
                                      horizontal: 0, vertical: -1),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.of(context)
                                            .pushNamed("/charge");
                                      },
                                      child: const Text(
                                        'ค่าบริการ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Prompt-Medium"),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red,
                            dividerColor: Colors.transparent,
                            fontFamily: "Prompt"),
                        child: ListTileTheme(
                          contentPadding:
                              const EdgeInsets.only(right: 5, left: 7),
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            iconColor: const Color(0xffed3023),
                            backgroundColor: const Color(0xfffafafa),
                            maintainState: true,
                            title: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 2),
                                  child: const Icon(
                                    FontAwesomeIcons.bookOpen,
                                    color: Color(0xffed3023),
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 21,
                                ),
                                const Text(
                                  'สาระน่ารู้',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            collapsedIconColor: Colors.black87,
                            collapsedBackgroundColor: const Color(0xfffafafa),
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 0.0),
                                visualDensity: const VisualDensity(
                                  horizontal: 0,
                                  vertical: -4,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.of(context)
                                          .pushNamed("/article");
                                    },
                                    child: const Text(
                                      'บทความ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 0.0),
                                  visualDensity: const VisualDensity(
                                      horizontal: 0, vertical: -1),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.of(context)
                                            .pushNamed("/introvideo");
                                      },
                                      child: const Text(
                                        'วิดีโอแนะนำ',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Prompt-Medium"),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Theme(
                        data: ThemeData(
                            primarySwatch: Colors.red,
                            dividerColor: Colors.transparent,
                            fontFamily: "Prompt"),
                        child: ListTileTheme(
                          contentPadding:
                              const EdgeInsets.only(right: 5, left: 7),
                          child: ExpansionTile(
                            initiallyExpanded: false,
                            iconColor: const Color(0xffed3023),
                            backgroundColor: const Color(0xfffafafa),
                            maintainState: true,
                            title: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 2),
                                  child: const Icon(
                                    FontAwesomeIcons.solidCircleQuestion,
                                    color: Color(0xffed3023),
                                    size: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 21,
                                ),
                                const Text(
                                  'ช่วยเหลือ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Prompt-Medium"),
                                ),
                              ],
                            ),
                            collapsedIconColor: Colors.black87,
                            collapsedBackgroundColor: const Color(0xfffafafa),
                            children: <Widget>[
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 0.0),
                                visualDensity: const VisualDensity(
                                  horizontal: 0,
                                  vertical: -4,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.of(context).pushNamed("/help");
                                    },
                                    child: const Text(
                                      'คำถามที่พบบ่อย',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Prompt-Medium"),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 0.0),
                                  visualDensity: const VisualDensity(
                                      horizontal: 0, vertical: -1),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.of(context)
                                            .pushNamed("/send_report");
                                      },
                                      child: const Text(
                                        'แจ้งปัญหาการใช้งาน',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "Prompt-Medium"),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                            height: 40,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 3),
                                    child: const Icon(
                                      FontAwesomeIcons.rightFromBracket,
                                      size: 16,
                                      color: Color(0xffed3023),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text(
                                    "ออกจากระบบ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: "Prompt-Medium"),
                                  ),
                                ],
                              ),
                            )),
                      ),
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
