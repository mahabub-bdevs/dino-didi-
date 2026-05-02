import 'package:flutter/material.dart';

import '../theme/app_colors.dart';


class CustomCheckBox extends StatelessWidget {
  final double? height;
  final double? weight;
  final Color? color;
  final VoidCallback? onTap;
  final Widget? imagePath;
  final double? wight;
  const CustomCheckBox({
    super.key,
    this.height,
    this.weight,
    this.color,
    this.onTap,
    this.imagePath,
    this.wight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 15.0,
        width: height ?? 20.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),

          border: BoxBorder.all(
            width: wight ?? 2,
            color: color ?? AppColors.backgroundDark.withValues(alpha: 0.5),
          ),
        ),
        child: Center(child: imagePath),
      ),
    );
  }
}
