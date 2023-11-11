import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'smilar_books_state.dart';

class SimilarBooksCubit  extends Cubit<SimilarBooksState> {
  SimilarBooksCubit ({required this.homeRep}) : super(SimilarBooksInitial());
  final HomeRepo homeRep;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRep.fetchSimilarBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
