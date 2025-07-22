import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_Text_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              title: "19.99€",
              textStyle: AppStyles.textStyleBold18.copyWith(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              left: 15,
            ),
          ),
          Expanded(
            child: CustomTextButton(
              title: "Free preview",
              textStyle:
                  AppStyles.textStyleRgular16.copyWith(color: Colors.white),
              backgroundColor: Color(0xffEF8262),
              right: 15,
            ),
          ),
        ],
      ),
    );
  }
}
