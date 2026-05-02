import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../utils/textstyle.dart';

class TextFileds extends StatelessWidget {
  final String titletextc;
  final String hintText;

  const TextFileds({
    super.key,
    required this.titletextc,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(titletextc, style: Textstyles().textL()),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.elevatedSurfaceLight,
            ),
            clipBehavior: Clip.hardEdge,
            child: TextFormField(
              minLines: 5,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Textstyles().texthint(fontsize: 12),

                filled: true,
                fillColor: Colors.transparent,
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
