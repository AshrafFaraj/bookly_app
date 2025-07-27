import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newset_books_list_view_item.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksLoading) {
          return SizedBox(height: 250, child: CustomLoadingIndicator());
        } else if (state is NewsetBooksSuccess) {
          return ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => NewsetBooksListItem(
                    bookModel: state.books[index],
                  ));
        } else if (state is NewsetBooksFaiure) {
          return ErrorWidget(state.errMessage);
        } else {
          return SizedBox();
        }
      },
    );
  }
}
