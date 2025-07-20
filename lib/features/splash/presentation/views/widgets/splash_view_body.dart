import 'package:bookly_app/core/assets.dart';
import 'package:bookly_app/core/constatnt.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(minutes: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(gotoHomeDelay, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeView(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: FittedBox(
            child: SvgPicture.asset(
              Assets.logo,
            ),
          ),
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
