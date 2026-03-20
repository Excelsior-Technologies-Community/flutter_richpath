import 'package:flutter/material.dart';
import 'package:flutter_richpath/flutter_richpath.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {

  RichPathController controller = RichPathController();

  Path path = Path()
    ..moveTo(20, 120)
    ..quadraticBezierTo(150, 0, 300, 120)
    ..quadraticBezierTo(450, 240, 600, 120);

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      controller.animateForward();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: RichPathWidget(
          path: path,
          controller: controller,
          style: const RichPathStyle(
            strokeWidth: 5,
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),
            dash: true,
            shadow: true,
          ),
        ),
      ),
    );
  }
}