import 'package:flutter/material.dart';

Path parseSvgPath(String svg) {

  Path path = Path();

  List<String> cmd = svg.split(' ');

  double x = 0;
  double y = 0;

  for (int i = 0; i < cmd.length; i++) {

    if (cmd[i] == 'M') {
      x = double.parse(cmd[i + 1]);
      y = double.parse(cmd[i + 2]);
      path.moveTo(x, y);
      i += 2;
    }

    if (cmd[i] == 'L') {
      x = double.parse(cmd[i + 1]);
      y = double.parse(cmd[i + 2]);
      path.lineTo(x, y);
      i += 2;
    }
  }

  return path;
}