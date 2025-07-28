import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/core/utils/styles.dart';
import '/features/home/data/models/book_model/book_model.dart';
import 'featured_book_list_view_item.dart';
import 'rate_widget.dart';

class NewsetBooksListItem extends StatelessWidget {
  const NewsetBooksListItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails', extra: bookModel);
      },
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 16),
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FeaturedBookCover(
                aspectRatio: 70 / 105,
                imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail! ??
                    'https://user-images.githubusercontent.com/24848110/33519396-7e56363c-d79d-11e7-969b-09782f5ccbab.png',
                borderRadius: 0,
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      style: AppStyles.textStyleRgular20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      bookModel.volumeInfo!.authors?[0] ?? '',
                      style: AppStyles.textStyleMedium14,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .55,
                    child: Row(
                      children: [
                        Text("Free", style: AppStyles.textStyleBold20),
                        Spacer(),
                        RateWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
