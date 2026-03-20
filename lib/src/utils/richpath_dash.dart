import 'dart:ui';

Path dashPath(Path source) {

  Path dest = Path();

  for (PathMetric metric in source.computeMetrics()) {

    double distance = 0;

    while (distance < metric.length) {

      dest.addPath(
        metric.extractPath(distance, distance + 12),
        Offset.zero,
      );

      distance += 24;
    }
  }

  return dest;
}