import 'package:flutter/material.dart';

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 0.4002225);
    path_0.cubicTo(
        size.width * 0.0007872858,
        size.height * 0.4000750,
        size.width * 0.001581158,
        size.height * 0.4000000,
        size.width * 0.002380883,
        size.height * 0.4000000);
    path_0.cubicTo(
        size.width * 0.02309158,
        size.height * 0.4000000,
        size.width * 0.03988092,
        size.height * 0.4503675,
        size.width * 0.03988092,
        size.height * 0.5125000);
    path_0.cubicTo(
        size.width * 0.03988092,
        size.height * 0.5746325,
        size.width * 0.02309158,
        size.height * 0.6250000,
        size.width * 0.002380883,
        size.height * 0.6250000);
    path_0.cubicTo(
        size.width * 0.001581158,
        size.height * 0.6250000,
        size.width * 0.0007872858,
        size.height * 0.6249250,
        0,
        size.height * 0.6247775);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper /* or 'clipper'*/) {
    return false;
  }
}
