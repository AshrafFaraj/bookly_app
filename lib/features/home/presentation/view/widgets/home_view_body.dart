import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/assets.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          child: SizedBox(
            height: 224,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: FeatureBookCover(borderRadius: 14),
                    )),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
            child: Text(
              "Best Seller",
              style: AppStyles.textStyle18,
            ),
          ),
        ),
        SliverList.builder(
            itemCount: 6, itemBuilder: (context, i) => BooksListItem()),
      ],
    );
  }
}

class FeatureBookCover extends StatelessWidget {
  const FeatureBookCover({
    super.key,
    required this.borderRadius,
  });

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 150 / 224,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
                image: AssetImage(Assets.tiger), fit: BoxFit.fill)),
      ),
    );
  }
}

class BooksListItem extends StatelessWidget {
  const BooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/bookDetails');
      },
      child: Container(
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 30),
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 70 / 105,
                child: Image.asset(Assets.harrypotter1),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      "Harry Potter and The Goblet of Fire",
                      style: AppStyles.textStyleRgular20,
                    ),
                  ),
                  Text(
                    "J.K. Rowling",
                    style: AppStyles.textStyleMedium14,
                  ),
                  Row(
                    children: [
                      Text("19.99 €", style: AppStyles.textStyleBold20),
                      SizedBox(
                        width: 35,
                      ),
                      RateWidget(),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class RateWidget extends StatelessWidget {
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.star),
        Text(
          "4.8",
          style: AppStyles.textStyleMedium16,
        ),
        Text(
          "(2390)",
          style: AppStyles.textStyleRgular14,
        ),
      ],
    );
  }
}
