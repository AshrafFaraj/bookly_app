import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets.dart';
import 'book_details_section.dart';
import 'custom_appbar.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar(
                onPressedLeading: () {
                  GoRouter.of(context).pop();
                },
                trailingIcon: Assets.cart,
                leadingIcon: Assets.close,
                padding:
                    EdgeInsets.only(top: 40, bottom: 32, left: 30, right: 30),
              ),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const SizedBox(
                height: 50,
              ),
              SimilarBooksSection()
            ],
          ),
        )
      ],
    );
  }
}
