import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'action_button.dart';
import 'featured_book_list_view_item.dart';
import 'rate_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.4,
            child: FeaturedBookCover(
              aspectRatio: 150 / 224,
              borderRadius: 20,
              imageUrl:
                  'http://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
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
