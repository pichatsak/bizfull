import 'package:flutter/material.dart';

class OnHover1 extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHover1({Key? key, required this.builder}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OnHover1State createState() => _OnHover1State();
}

class _OnHover1State extends State<OnHover1> {
  // final nonHoverTransform = Matrix4.identity();
  // final isHoverredTransform = Matrix4.identity()..translate(0, -2, 5);

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    // final hovered = Matrix4.identity()..translate(0, -10, 0);
    // final transform = isHovered ? hovered : Matrix4.identity();
    // final hovered = Matrix4.identity()
    //   ..translate(8, 0, 0)
    //   ..scale(1.2);
    // final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
     //   transform: isHovered ? isHoverredTransform : nonHoverTransform,

        // transform: transform,
        // transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
