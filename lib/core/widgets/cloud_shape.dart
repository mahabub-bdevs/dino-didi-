import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'dart:math';

class CloudShape extends StatelessWidget {
  const CloudShape({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200, // ইমেজের প্রস্থ অনুযায়ী
      height: 141, // ইমেজের উচ্চতা অনুযায়ী
      child: CustomPaint(painter: PixelPerfectCloudPainter()),
    );
  }
}

class PixelPerfectCloudPainter extends CustomPainter {
  const PixelPerfectCloudPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Color(0xFFE1F3FF),
          Color(0xFF8CCFFF), // নিচের দিকের সেই গাঢ় নীল আভা
        ],
        stops: [0.1, 0.4, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, w, h))
      ..style = PaintingStyle.fill;

    final path = Path();

    // শুরু হচ্ছে একদম বাম পাশের মাঝখান থেকে
    path.moveTo(w * 0.12, h * 0.50);

    // --- বাম পাশের ছোট ঢেউগুলো (Left Bumps) ---
    path.arcToPoint(Offset(w * 0.15, h * 0.35), radius: const Radius.circular(15)); // বাম-ওপর
    path.arcToPoint(Offset(w * 0.30, h * 0.20), radius: const Radius.circular(25)); // ওপর-বাম প্রধান

    // --- ওপরের প্রধান ঢেউ (Top Main Bump) ---
    path.arcToPoint(Offset(w * 0.60, h * 0.20), radius: const Radius.circular(40));

    // --- ডান পাশের ঢেউগুলো (Right Bumps) ---
    path.arcToPoint(Offset(w * 0.80, h * 0.35), radius: const Radius.circular(25)); // ওপর-ডান
    path.arcToPoint(Offset(w * 0.90, h * 0.55), radius: const Radius.circular(15)); // একদম ডান মাঝখান
    path.arcToPoint(Offset(w * 0.85, h * 0.75), radius: const Radius.circular(20)); // ডান-নিচে

    // --- নিচের প্রধান ঢেউ (Bottom Main Curves) ---
    path.arcToPoint(Offset(w * 0.55, h * 0.85), radius: const Radius.circular(35));
    path.arcToPoint(Offset(w * 0.30, h * 0.85), radius: const Radius.circular(35));

    // --- বাম পাশের নিচের ঢেউ (Closing Left) ---
    path.arcToPoint(Offset(w * 0.12, h * 0.65), radius: const Radius.circular(20));
    path.arcToPoint(Offset(w * 0.12, h * 0.50), radius: const Radius.circular(15));

    path.close();

    // ১. পেছনের হালকা গ্লো বা শ্যাডো
    canvas.drawPath(
      path,
      Paint()
        ..color = const Color(0xFF7EC8F0).withOpacity(0.3)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10),
    );

    // ২. মেইন ক্লাউড ফিল
    canvas.drawPath(path, paint);

    // ৩. ওপরের সাদা শাইন (Highlight)
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset(w * 0.5, h * 0.38),
        width: w * 0.5,
        height: h * 0.22,
      ),
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.7),
            Colors.white.withOpacity(0.0),
          ],
        ).createShader(Rect.fromLTWH(w * 0.25, h * 0.25, w * 0.5, h * 0.2))
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8),
    );

    // ৪. বর্ডার লাইন (ইমেজের মতো পাতলা নীল)
    canvas.drawPath(
      path,
      Paint()
        ..color = const Color(0xFF70C1EF).withOpacity(0.5)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.0,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}