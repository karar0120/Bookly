import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<BookModel>>> fetchNewSetBook();

 Future<Either<Failure,List<BookModel>>>fetchFeaturedBook();

 Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
