import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    required this.textStyle,
    required this.backgroundColor,
    required this.onPressed,
    this.leftRadius = 0,
    this.rightRadius = 0,
  });
  final String title;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double leftRadius;
  final double rightRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(leftRadius),
                      right: Radius.circular(rightRadius)))),
          child: Text(
            title,
            style: textStyle,
          )),
    );
  }
}
