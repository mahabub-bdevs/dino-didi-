import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../utils/app_size_class.dart';
import '../theme/app_colors.dart';
import '../theme/app_dimensions.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Shimmer.fromColors(
      baseColor: colors.surfaceVariant,
      highlightColor: colors.elevatedSurface,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getRadius(AppDimensions.radius16)),
        ),
        child: Padding(
          padding: EdgeInsets.all(getRadius(AppDimensions.padding16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: getRadius(AppDimensions.padding16),
                  ),
                  SizedBox(width: getWidth(AppDimensions.space10)),
                  Expanded(
                    child: Container(
                      height: getHeight(AppDimensions.padding10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(getRadius(AppDimensions.padding16)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(AppDimensions.space12)),
              Container(
                height: getHeight(AppDimensions.font15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(getRadius(AppDimensions.padding20)),
                ),
              ),
              SizedBox(height: getHeight(AppDimensions.space16)),
              Container(
                height: getHeight(AppDimensions.font14),
                width: getWidth(AppDimensions.skeleton100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(getRadius(AppDimensions.padding20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkeletonListView extends StatelessWidget {
  final int itemCount;

  const SkeletonListView({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(
        horizontal: hPadding,
        vertical: getHeight(AppDimensions.padding10),
      ),
      itemCount: itemCount,
      separatorBuilder: (context, index) => SizedBox(height: getHeight(AppDimensions.space10)),
      itemBuilder: (context, index) => const SkeletonItem(),
    );
  }
}
