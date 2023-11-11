
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/data/models/book_model/book_model.dart';
import '../../Features/home/data/repo/home_repo_impl.dart';
import '../../Features/home/presentation/mange/smilar_books_cubit/smilar_books_cubit.dart';
import '../../Features/home/presentation/view/book_details_view.dart';
import '../../Features/home/presentation/view/home_view.dart';
import '../../Features/search/persentation/views/search_view.dart';
import '../../Features/splash/presentation/splash_view.dart';
import '../utils/server_locator.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
           homeRep: getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}