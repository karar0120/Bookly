import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBook() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming");

      return right(List<BookModel>.from(
          (data['items'] as List).map((e) => BookModel.fromJson(e))));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(
        errMessage: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() async{
    try {
      var data = await apiService.get(
          endPoint:
          "volumes?Filtering=free-ebooks&q=subject:Programming");

      return right(List<BookModel>.from(
          (data['items'] as List).map((e) => BookModel.fromJson(e))));
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(ServerFailure(
        errMessage: e.toString(),
      ));
    }
  }
}
