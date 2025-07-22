import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 10),
          child: CustomSearchTextField(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Text(
            "Search Result:",
            style: AppStyles.textStyle18,
          ),
        ),
        Expanded(child: CustomSearchResultListView()),
      ],
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 84, 90, 97),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '  Search',
            suffixIcon: IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Assets.search))),
      ),
    );
  }
}

class CustomSearchResultListView extends StatelessWidget {
  const CustomSearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30, itemBuilder: (context, index) => BooksListItem());
  }
}
