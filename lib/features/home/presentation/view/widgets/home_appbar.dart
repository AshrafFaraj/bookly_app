import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/assets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, right: 30, left: 30),
      child: Row(
        children: [
          SvgPicture.asset(Assets.logo),
          Spacer(),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(Assets.search))
        ],
      ),
    );
  }
}
