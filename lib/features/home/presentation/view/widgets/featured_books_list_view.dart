import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import '/features/home/presentation/view/widgets/err_massage.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import 'featured_book_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const CustomLoadingIndicator();
        } else if (state is FeaturedBooksLoaded) {
          // print('------------ ${state.books}');
          return SizedBox(
            height: 224,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: FeaturedBookCover(
                        aspectRatio: 150 / 224,
                        borderRadius: 14,
                        imageUrl: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!,
                      ),
                    )),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrMassage(errMassage: state.errMessage);
        } else {
          return Center(
            child: Text("xxxxxxxxxxxxxxx"),
          );
        }
      },
    );
  }
}
