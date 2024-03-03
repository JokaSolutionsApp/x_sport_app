import 'package:flutter/material.dart';

class ChatBubblePainter extends CustomPainter {
  final double width;
  final Color color;

  ChatBubblePainter({required this.width, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    var path = Path();
    // Scale the path to fit the text size
    double scaleX = width / 242;
    double scaleY = size.height / 115;

    path.moveTo(0 * scaleX, 12 * scaleY);
    path.lineTo(0 * scaleX, 103 * scaleY);
    path.cubicTo(0 * scaleX, 109.627 * scaleY, 5.37259 * scaleX, 115 * scaleY,
        12 * scaleX, 115 * scaleY);
    path.lineTo(229.571 * scaleX, 115 * scaleY);
    path.cubicTo(238.949 * scaleX, 115 * scaleY, 244.702 * scaleX,
        104.725 * scaleY, 239.802 * scaleX, 96.7293 * scaleY);
    path.lineTo(232 * scaleX, 84 * scaleY);
    path.lineTo(232 * scaleX, 12 * scaleY);
    path.cubicTo(
        232 * scaleX, 5.37258 * scaleY, 226.627 * scaleX, 0, 220 * scaleX, 0);
    path.lineTo(12 * scaleX, 0);
    path.cubicTo(5.37259 * scaleX, 0, 0 * scaleX, 5.37258 * scaleY, 0 * scaleX,
        12 * scaleY);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
