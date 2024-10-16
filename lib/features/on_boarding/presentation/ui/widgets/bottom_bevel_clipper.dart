
import 'package:flutter/material.dart';

class BottomBevelClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;
    final path = Path();
    path.lineTo(0, 0); // Start from top-left
    path.lineTo(width, 0); // Move to top-right corner
    path.lineTo(width, height * 0.75); // Move to bottom-right corner
    path.lineTo(0, height); // Clip the right side
    path.close(); // Complete the shape
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
