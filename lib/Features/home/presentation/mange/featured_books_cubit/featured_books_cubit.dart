import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRep}) : super(FeaturedBooksInitial());
  final HomeRepo homeRep;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRep.fetchFeaturedBook();

    result.fold((failure) {
      emit(FeaturedBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
