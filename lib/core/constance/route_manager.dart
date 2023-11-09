
import 'package:go_router/go_router.dart';

import '../../Features/home/persentation/home_view/book_details_view.dart';
import '../../Features/home/persentation/home_view/home_view.dart';
import '../../Features/search/persentation/views/search_view.dart';
import '../../Features/splash/presentation/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder:(context,state)=> const BookDetailsView(),
      ),
    ],
  );
}