import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'action_button.dart';
import 'featured_book_list_view_item.dart';
import 'rate_widget.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.45,
            child: FeaturedBookCover(
              aspectRatio: 150 / 224,
              borderRadius: 20,
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
            )),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            textAlign: TextAlign.center,
            bookModel.volumeInfo!.title!,
            style: AppStyles.textStyleRegular30,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: AppStyles.textStyleMedium18.copyWith(color: Color(0xffB7B6BC)),
        ),
        SizedBox(
          height: 20,
        ),
        RateWidget(),
        SizedBox(
          height: 40,
        ),
        ActionButton(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
