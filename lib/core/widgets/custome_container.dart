import 'package:dino_dadi_app/core/core.dart';
import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Widget? imagePath;
  const CustomeContainer({
    super.key,
    this.height,
    this.width,
    this.color,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? getHeight(46),
      width: width ?? getWidth(46),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? AppColors.elevatedSurfaceLight,
      ),
      child: imagePath,
    );
  }
}
