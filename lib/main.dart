import 'package:bookly_app/core/app_color.dart';
import 'package:bookly_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColor.primaryColor),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(routes: [
  // GoRoute(path: '/', builder: (context, state) => SplashView()),
  GoRoute(path: '/', builder: (context, state) => SearchView()),
  GoRoute(path: '/home', builder: (context, state) => HomeView()),
  GoRoute(path: '/bookDetails', builder: (context, state) => BookDetailsView()),
  GoRoute(path: '/searchView', builder: (context, state) => SearchView()),
]);
