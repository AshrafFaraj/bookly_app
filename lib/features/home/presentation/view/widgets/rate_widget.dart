import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({super.key, this.rating = 0, this.count = 0});
  final int? rating;
  final int? count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.star),
        Text(
          ' $rating',
          style: AppStyles.textStyleMedium16,
        ),
        Text(
          "($count)",
          style: AppStyles.textStyleRgular14,
        ),
      ],
    );
  }
}
