import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: AppStyles.textStyleBold18,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SimilarBooksListView(),
      ],
    );
  }
}
