import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_text_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.8,
      height: 48,
      child: Row(
        children: [
          Expanded(
            child: CustomTextButton(
              onPressed: () async {},
              title: "Free",
              textStyle: AppStyles.textStyleBold18.copyWith(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              leftRadius: 15,
            ),
          ),
          Expanded(
            child: CustomTextButton(
              onPressed: () async {
                Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
                if (!await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Can't lanch book")));
                }
              },
              title: getText(bookModel),
              textStyle:
                  AppStyles.textStyleRgular16.copyWith(color: Colors.white),
              backgroundColor: Color(0xffEF8262),
              rightRadius: 15,
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo?.previewLink == null) {
      return 'Not Availaible';
    } else {
      return 'Preview';
    }
  }
}
