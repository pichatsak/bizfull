import 'package:flutter/material.dart';

// class BoxShapMenu extends CustomClipper<Path> {
//   @override
//   getClip(Size size) {
//     var path = Path();

//     path.moveTo(0, 0);
//     path.lineTo(0, size.height / 1.1);
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(size.width, size.height / 1.1);
//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return false;
//   }
// }

class BoxShapMenu extends ShapeBorder {
  final bool usePadding;

  const BoxShapMenu({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: usePadding ? 0 : 0);

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight);

    double radius = 10;
    double height = 120;
    double width = 240;
    double sp = 8;
    double mgtop = 10;

    var path = Path();
    path.moveTo(height, 0);
    path.lineTo((width / 2) + sp, mgtop);
    path.lineTo(width - radius, mgtop);
    path.arcToPoint(Offset(width, mgtop + radius),
        radius: Radius.circular(radius));
    path.lineTo(width, height - radius);
    path.arcToPoint(Offset(width - radius, height),
        radius: Radius.circular(radius));
    path.lineTo(radius, height);
    path.arcToPoint(Offset(0, height - radius),
        radius: Radius.circular(radius));
    path.lineTo(0, mgtop + radius);
    path.arcToPoint(Offset(radius, mgtop), radius: Radius.circular(radius));
    path.lineTo((width / 2) - sp, mgtop);
    path.close();

    return path;
  }

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    throw UnimplementedError();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}
}
