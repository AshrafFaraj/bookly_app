import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.trailingIcon,
    required this.leadingIcon,
    this.padding = const EdgeInsets.symmetric(vertical: 48, horizontal: 30),
    this.onPressedLeading,
    this.onPressedTrailing,
  });

  final String trailingIcon;
  final String leadingIcon;
  final EdgeInsetsGeometry padding;
  final void Function()? onPressedLeading;
  final void Function()? onPressedTrailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          IconButton(
              onPressed: onPressedLeading, icon: SvgPicture.asset(leadingIcon)),
          Spacer(),
          IconButton(
              onPressed: onPressedTrailing,
              icon: SvgPicture.asset(trailingIcon))
        ],
      ),
    );
  }
}
