import 'package:flutter/material.dart';

class TCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurv = Offset(0, size.height - 20);
    final lastCurv = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurv.dx, firstCurv.dy, lastCurv.dx, lastCurv.dy);

    final secondfirstCurv = Offset(0, size.height - 20);
    final secondlastCurv = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstCurv.dx, secondfirstCurv.dy,
        secondlastCurv.dx, secondlastCurv.dy);

    final thirdfirstCurv = Offset(size.width, size.height - 20);
    final thirdlastCurv = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstCurv.dx, thirdfirstCurv.dy,
        thirdlastCurv.dx, thirdlastCurv.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
}
