import '/core/widgets/custom_loading_indicator.dart';
import '/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'featured_book_list_view_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: FeaturedBookCover(
                        aspectRatio: 150 / 224,
                        borderRadius: 7,
                        imageUrl: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!,
                      ),
                    )),
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorWidget(state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
