import 'package:flutter/material.dart';

class OnHoverMenu extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverMenu({Key? key, required this.builder}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OnHoverMenuState createState() => _OnHoverMenuState();
}

class _OnHoverMenuState extends State<OnHoverMenu> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    // on hover animation movement matrix translation
    final hovered = Matrix4.identity()..translate(15, 0, 0);
    final transform = isHovered ? hovered : Matrix4.identity();
    // when user enter the mouse pointer onEnter method will work
    // when user exit the mouse pointer from MouseRegion onExit method will work
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: transform, // animation transformation hovered.
        child:
            widget.builder(isHovered), // build the widget passed from main.dart
      ),
    );
  }

  //used to set bool isHovered to true/false
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
