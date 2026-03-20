#🎯 flutter_richpath
```
flutter_richpath is a powerful and flexible custom path drawing and animation library for Flutter.

It helps developers easily create animated curves, waves, dashed paths, SVG strokes, signature effects, progress paths and creative UI shapes without writing complex CustomPainter logic.

The library provides controller-based path animation, gradient strokes, shadow effects, dashed rendering, fill shapes, gesture interaction and full Path customization support.

Developers can build modern graphics driven UI such as charts, map routes, onboarding curves, waveform visuals, neon borders and creative motion designs for Android, iOS, Web and Desktop applications using a lightweight and scalable architecture.
```

----

## ✨ Features

```
- 🎨 Draw Custom Paths using Flutter Path API
- ✏️ Signature Style Path Drawing Animation
- 🌈 Gradient Stroke Support
- ➖ Dashed Path Rendering
- 🌫 Shadow Stroke Effect
- 🧩 Fill Shape Background Support
- 🎮 Gesture Based Path Progress Control
- 📊 Perfect for Charts / Graph Lines
- 🗺 Map Route Path Rendering
- 🌊 Wave & Curve UI Designs
- 🧾 SVG Path Parsing Support
- ⚡ Controller Based Animation System
- 📦 Lightweight and High Performance
- 🌐 Supports Android, iOS, Web & Desktop
```

----

## 📦 Installation

Add dependency in your pubspec.yaml
```
dependencies:
  flutter_richpath:
    path: https://github.com/Excelsior-Technologies-Community/flutter_richpath/tree/stage
```
Then run:
```
flutter pub get
```

----

## 🎬 Preview

https://github.com/user-attachments/assets/6371ea0d-ae88-40cf-b71c-5b54ff1b38f4

----

## 🗂 File Structure
```
flutter_richpath/
│
├─ lib/
│   └─ src/
│       ├─ controller/
│       │   └─ richpath_controller.dart
│       │       // Controls path animation progress
│       │
│       ├─ model/
│       │   └─ richpath_style.dart
│       │       // Defines path styling properties
│       │
│       ├─ painter/
│       │   └─ richpath_painter.dart
│       │       // Core custom painter engine for drawing paths
│       │
│       ├─ utils/
│       │   ├─ richpath_dash.dart
│       │   │   // Generates dashed path rendering
│       │   │
│       │   └─ richpath_svg_parser.dart
│       │       // Parses SVG path string into Flutter Path
│       │
│       ├─ widget/
│       │   └─ richpath_widget.dart
│       │       // Main widget to render animated rich paths
│       │
│       ├─ flutter_richpath.dart
│       │   // Library export file
│       │
│       └─ main.dart
│           // Demo example screen for testing library
│
├─ README.md
│   // Package documentation
│
├─ LICENSE
│   // Open source license file
│
└─ pubspec.yaml
    // Package configuration
```

----

## 🚀 How To Use

1️⃣ Import Package
```
import 'package:flutter_richpath/flutter_richpath.dart';
```
2️⃣ Create Path
```
Path path = Path()
  ..moveTo(20, 120)
  ..quadraticBezierTo(150, 0, 300, 120)
  ..quadraticBezierTo(450, 240, 600, 120);
```
3️⃣ Create Controller
```
RichPathController controller = RichPathController();
```
4️⃣ Render RichPath
```
RichPathWidget(
  path: path,
  controller: controller,
  style: RichPathStyle(
    strokeWidth: 5,
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
    ),
    dash: true,
    shadow: true,
  ),
)
```
5️⃣ Animate Path
```
controller.animateForward();
```

----

## 🎨 RichPathStyle Properties

| Property    | Description             |
| ----------- | ----------------------- |
| color       | Stroke color            |
| strokeWidth | Path thickness          |
| gradient    | Gradient stroke         |
| dash        | Enable dashed rendering |
| shadow      | Draw shadow under path  |
| fillColor   | Fill closed shape       |

----

## 📄 MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software without restriction.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```










