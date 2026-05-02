import 'package:flutter/material.dart';

import '../core.dart';
import '../theme/theme.dart';

class CustomLeading extends StatelessWidget {
  final Widget? icons;
  final Color? color;

  const CustomLeading({super.key, this.icons, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? AppColors.elevatedSurfaceLight,
      ),
      child: Center(
        child:
            icons ??
            Padding(
              padding: EdgeInsets.only(left: getWidth(AppDimensions.padding10)),
              child:
                  icons ??
                  Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.backgroundDark.withValues(alpha: 0.8),
                  ),
            ),
      ),
    );
  }
}
