import 'package:bookly_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: AppStyles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
