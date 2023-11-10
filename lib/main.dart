import 'package:bookly/Features/home/data/repo/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/mange/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/constance/route_manager.dart';
import 'package:bookly/core/utils/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Features/home/presentation/mange/NewsetBooksCubit/newset_books_cubit.dart';
import 'core/constance/theme_manger.dart';

void main() {
  initAppModule();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    FeaturedBooksCubit(homeRep: getIt<HomeRepoImpl>())..fetchFeatureBooks()),
            BlocProvider(
                create: (context) =>
                    NewSetBooksCubit(homeRep: getIt<HomeRepoImpl>()))
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            darkTheme: getAppTheme(),
          ),
        );
      },
    );
  }
}
