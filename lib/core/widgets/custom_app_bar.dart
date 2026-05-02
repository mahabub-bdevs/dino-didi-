import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final double? leadingWidth;
  final bool centerTitle;
  final Widget? title;
  final List<Widget>? action;
  final EdgeInsetsGeometry? actionPadding;
  final Color bagRoundColor;
  CustomAppBar({
    super.key,
    this.leading,
    this.leadingWidth,
    this.action,
    this.centerTitle = false,
    this.title,
    this.actionPadding,
    this.bagRoundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bagRoundColor,
      automaticallyImplyLeading: false,
      leadingWidth: leadingWidth,
      actionsPadding: actionPadding,
      leading: leading,
      actions: action,
      title: title,
      centerTitle: centerTitle,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
