import 'package:flutter/material.dart';
import '../controller/richpath_controller.dart';
import '../model/richpath_style.dart';
import '../painter/richpath_painter.dart';

class RichPathWidget extends StatefulWidget {

  final Path path;
  final RichPathController controller;
  final RichPathStyle style;

  const RichPathWidget({
    super.key,
    required this.path,
    required this.controller,
    required this.style,
  });

  @override
  State<RichPathWidget> createState() => _RichPathWidgetState();
}

class _RichPathWidgetState extends State<RichPathWidget> {

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onPanUpdate: (d) {
        widget.controller.setProgress(
          widget.controller.progress + d.delta.dx * 0.002,
        );
      },
      child: CustomPaint(
        painter: RichPathPainter(
          path: widget.path,
          progress: widget.controller.progress,
          style: widget.style,
        ),
        size: const Size(double.infinity, 200),
      ),
    );
  }
}