import 'package:bookly_app/core/app_color.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() {
  setupServicesLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewsetBooksCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchNewsetBooks()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: AppColor.primaryColor),
        routerConfig: _router,
      ),
    );
  }
}

final _router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => SplashView()),
  // GoRoute(path: '/', builder: (context, state) => SearchView()),
  GoRoute(path: '/home', builder: (context, state) => HomeView()),
  GoRoute(path: '/bookDetails', builder: (context, state) => BookDetailsView()),
  GoRoute(path: '/searchView', builder: (context, state) => SearchView()),
]);
