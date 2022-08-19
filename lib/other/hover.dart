import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHover({Key? key, required this.builder}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  // final nonHoverTransform = Matrix4.identity();
  // final isHoverredTransform = Matrix4.identity()
  //   ..translate(0, -2, 5)
  //   ..scale(0.99);

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
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
        //    transform: isHovered ? isHoverredTransform : nonHoverTransform,

            // transform: transform,
            // transform: transform,
            child: widget.builder(isHovered),
          ),
        ],
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
