import 'package:bookly_app/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 84, 90, 97),
      ),
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<SearchBooksCubit>(context)
              .searchBooks(searchTitle: controller.text);
          print(value);
        },
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: '  Search',
            suffixIcon: IconButton(
                onPressed: () {
                  BlocProvider.of<SearchBooksCubit>(context)
                      .searchBooks(searchTitle: controller.text);
                },
                icon: SvgPicture.asset(Assets.search))),
      ),
    );
  }
}
