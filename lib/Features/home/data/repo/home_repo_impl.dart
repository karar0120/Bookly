import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewSetBook() async {
    try{
      var data = await apiService.get(
          endPoint:
          "volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming");

      return right(List<BookModel>.from(
          (data['items'] as List).map((e) => BookModel.fromJson(e))));
    }catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() {
    throw UnimplementedError();
  }
}
