import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'featured_book_list_view_item.dart';

class BooksOverturesSection extends StatelessWidget {
  const BooksOverturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: AppStyles.textStyleSemiBold14,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SizedBox(
          height: 112,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: FeaturedBookCover(
                      aspectRatio: 150 / 224,
                      borderRadius: 7,
                      imageUrl:
                          'http://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api',
                    ),
                  )),
        ),
      ],
    );
  }
}
