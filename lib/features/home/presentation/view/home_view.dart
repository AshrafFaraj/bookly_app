import 'package:bookly_app/features/home/presentation/view/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeAppBar()],
      ),
    );
  }
}
