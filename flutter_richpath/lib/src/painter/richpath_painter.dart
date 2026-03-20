import 'dart:ui';
import 'package:flutter/material.dart';
import '../model/richpath_style.dart';
import '../utils/richpath_dash.dart';

class RichPathPainter extends CustomPainter {

  final Path path;
  final double progress;
  final RichPathStyle style;

  RichPathPainter({
    required this.path,
    required this.progress,
    required this.style,
  });

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = style.strokeWidth
      ..strokeCap = StrokeCap.round;

    if (style.gradient != null) {
      paint.shader = style.gradient!
          .createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    } else {
      paint.color = style.color;
    }

    if (style.shadow) {
      canvas.drawShadow(path, Colors.black, 4, false);
    }

    Path draw = Path();

    for (PathMetric m in path.computeMetrics()) {
      draw.addPath(
        m.extractPath(0, m.length * progress),
        Offset.zero,
      );
    }

    if (style.dash) {
      draw = dashPath(draw);
    }

    if (style.fillColor != Colors.transparent) {
      Paint fill = Paint()..color = style.fillColor;
      canvas.drawPath(path, fill);
    }

    canvas.drawPath(draw, paint);
  }

  @override
  bool shouldRepaint(covariant RichPathPainter oldDelegate) =>
      oldDelegate.progress != progress;
}