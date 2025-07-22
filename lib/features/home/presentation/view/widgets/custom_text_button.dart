import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.title,
      required this.textStyle,
      required this.backgroundColor,
      this.left = 0,
      this.right = 0});
  final String title;
  final TextStyle textStyle;
  final Color backgroundColor;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(left),
                      right: Radius.circular(right)))),
          child: Text(
            title,
            style: textStyle,
          )),
    );
  }
}
