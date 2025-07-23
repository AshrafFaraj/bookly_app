import 'package:bookly_app/features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
import 'widgets/book_details_section.dart';
import 'widgets/book_overtures_section.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppBar(
                trailingIcon: Assets.cart,
                leadingIcon: Assets.close,
                padding:
                    EdgeInsets.only(top: 40, bottom: 30, left: 30, right: 30),
              ),
              BookDetailsSection(),
              const SizedBox(
                height: 20,
              ),
              BooksOverturesSection()
            ],
          ),
        )
      ],
    ));
  }
}
