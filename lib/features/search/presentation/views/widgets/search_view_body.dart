import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_Text_field.dart';
import 'custom_search_result_list_view.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 35, bottom: 10),
          child: CustomSearchTextField(
            controller: controller,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
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
