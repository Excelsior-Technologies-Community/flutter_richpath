import 'package:flutter/material.dart';

class RichPathStyle {

  final Color color;
  final double strokeWidth;
  final Gradient? gradient;
  final bool dash;
  final bool shadow;
  final Color fillColor;

  const RichPathStyle({
    this.color = Colors.blue,
    this.strokeWidth = 4,
    this.gradient,
    this.dash = false,
    this.shadow = false,
    this.fillColor = Colors.transparent,
  });
}