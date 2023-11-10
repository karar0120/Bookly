import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/Features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_services.dart';

final getIt = GetIt.instance;

Future<void> initAppModule() async {

  getIt.registerLazySingleton<ApiService>(
          () => ApiService(Dio()));

  getIt.registerLazySingleton<HomeRepo>(() =>HomeRepoImpl(apiService: getIt<ApiService>()));


}
