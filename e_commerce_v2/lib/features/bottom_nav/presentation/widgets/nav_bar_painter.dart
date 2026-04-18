import 'package:flutter/material.dart';

class NavBarPainter extends CustomPainter {
  final Color color;

  NavBarPainter({required this.color});

  static const double cornerRadius = 20.0;
  static const double notchRadius = 25.0;
  static const double notchMargin = 8.0;
  static const double sideMargin = 12.0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    // Shadow
    final shadowPaint = Paint()
      ..color = color.withOpacity(0.35)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

    final path = _buildPath(size);
    canvas.drawPath(path, shadowPaint);
    canvas.drawPath(path, paint);
  }

  Path _buildPath(Size size) {
    final double left = sideMargin;
    final double right = size.width - sideMargin;
    final double top = 8.0;
    final double bottom = size.height - 10.0;
    final double centerX = size.width / 2;

    final double notchLeft = centerX - notchRadius - notchMargin;
    final double notchRight = centerX + notchRadius + notchMargin;
    final double notchDepth = notchRadius + notchMargin;

    final path = Path();

    // Top-left corner
    path.moveTo(left + cornerRadius, top);

    // Top edge → notch left shoulder
    path.lineTo(notchLeft - 10, top);

    // Left shoulder curve down
    path.cubicTo(
      notchLeft,
      top,
      notchLeft,
      top,
      notchLeft + 5,
      top + notchDepth * 0.45,
    );

    // Bottom of notch (arc)
    path.arcToPoint(
      Offset(notchRight - 5, top + notchDepth * 0.45),
      radius: Radius.circular(notchRadius + notchMargin),
      clockwise: false,
    );

    // Right shoulder curve up
    path.cubicTo(notchRight, top, notchRight, top, notchRight + 10, top);

    // Top edge → top-right corner
    path.lineTo(right - cornerRadius, top);
    path.quadraticBezierTo(right, top, right, top + cornerRadius);

    // Right edge → bottom-right corner
    path.lineTo(right, bottom - cornerRadius);
    path.quadraticBezierTo(right, bottom, right - cornerRadius, bottom);

    // Bottom edge
    path.lineTo(left + cornerRadius, bottom);
    path.quadraticBezierTo(left, bottom, left, bottom - cornerRadius);

    // Left edge → top-left corner
    path.lineTo(left, top + cornerRadius);
    path.quadraticBezierTo(left, top, left + cornerRadius, top);

    path.close();
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
