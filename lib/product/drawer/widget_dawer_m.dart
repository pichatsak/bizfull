// ignore_for_file: avoid_unnecessary_containers

import 'package:bizfull/product/drawer/widget_mm.dart';

import 'package:flutter/material.dart';

class Drawerproduct extends StatefulWidget {
  const Drawerproduct({Key? key}) : super(key: key);

  @override
  State<Drawerproduct> createState() => _DrawerproductState();
}

class _DrawerproductState extends State<Drawerproduct> {
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
                  const SizedBox(height: 20),
                  datam(),
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
