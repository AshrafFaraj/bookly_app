import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets.dart';
import 'custom_appbar.dart';
import 'featured_books_list_view.dart';
import 'newset_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: false,
          snap: false,
          toolbarHeight: 111,
          title: CustomAppBar(
              onPressedTrailing: () {
                GoRouter.of(context).push('/searchView');
              },
              trailingIcon: Assets.search,
              leadingIcon: Assets.logo),
        ),
        SliverToBoxAdapter(
          child: FeaturedBooksListView(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
            child: Text(
              "Newset books",
              style: AppStyles.textStyle18,
            ),
          ),
        ),
        SliverFillRemaining(child: NewsetBooksListView()),
      ],
    );
  }
}
