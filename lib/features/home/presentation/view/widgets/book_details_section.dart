import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'action_button.dart';
import 'home_view_body.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: FeatureBookCover(
              borderRadius: 20,
            )),
        SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: AppStyles.textStyleRegular30,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Rudyard Kipling",
          style: AppStyles.textStyleMedium18.copyWith(color: Color(0xffB7B6BC)),
        ),
        SizedBox(
          height: 20,
        ),
        RateWidget(),
        SizedBox(
          height: 40,
        ),
        ActionButton(),
      ],
    );
  }
}
