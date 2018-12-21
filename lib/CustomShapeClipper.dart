import 'package:flutter/material.dart';


class CustomShapeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width * .5, size.height - 32.0);
    var firstControlPoint = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;

//    return null;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }

}