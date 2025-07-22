import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuyOrPreview extends StatelessWidget {
  const BuyOrPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: 48,
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
            ),
            child: Text(
              "19.99€",
              textAlign: TextAlign.center,
              style: AppStyles.textStyleBold18.copyWith(
                color: Colors.black,
              ),
            ),
          )),
          Expanded(
              child: Container(
            height: 48,
            decoration: BoxDecoration(
                color: Color(0xffEF8262),
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(15))),
            child: Text(
              "Free preview",
              textAlign: TextAlign.center,
              style: AppStyles.textStyleRgular16,
            ),
          )),
        ],
      ),
    );
  }
}
