import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets.dart';

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
