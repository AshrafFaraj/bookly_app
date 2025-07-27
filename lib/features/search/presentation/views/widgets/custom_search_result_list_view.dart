import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/view/widgets/newset_books_list_view_item.dart';

class CustomSearchResultListView extends StatelessWidget {
  const CustomSearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
        builder: (context, state) {
      if (state is SearchBooksSuccess) {
        return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                NewsetBooksListItem(bookModel: state.books[index]));
      } else if (state is SearchBooksFailure) {
        return ErrorWidget(state.errMessage);
      } else {
        return CustomLoadingIndicator();
      }
    });
  }
}
