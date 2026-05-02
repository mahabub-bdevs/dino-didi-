import 'dart:math';

import 'package:flutter/material.dart';

class MyCircularProgress extends StatefulWidget {
  final double currentMin;
  final double totalMin;
  final Color activeColor;

  const MyCircularProgress({
    required this.currentMin,
    required this.totalMin,
    required this.activeColor,
  });

  @override
  State<MyCircularProgress> createState() => _MyCircularProgressState();
}

class _MyCircularProgressState extends State<MyCircularProgress> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(70, 70), // বৃত্তের সাইজ
      painter: ProgressPainter(
        percentage: widget.currentMin / widget.totalMin,
        activeColor: widget.activeColor,
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  final double percentage;
  final Color activeColor;

  ProgressPainter({required this.percentage, required this.activeColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = activeColor.withOpacity(0.2)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    Paint activePaint = Paint()
      ..color = activeColor
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round; // মাথা গোলাকার করার জন্য

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    // পেছনের হালকা বৃত্ত
    canvas.drawCircle(center, radius, backgroundPaint);

    // সামনের প্রোগ্রেস আর্ক (Arc)
    double sweepAngle = 2 * pi * percentage;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,// ১২টার পজিশন থেকে শুরু হবে
      false,
      activePaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
