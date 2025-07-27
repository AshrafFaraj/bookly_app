import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_Text_field.dart';
import 'custom_search_result_list_view.dart';

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
        const Padding(
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
