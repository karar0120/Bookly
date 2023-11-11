import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'newset_books_state.dart';

class NewSetBooksCubit extends Cubit<NewSetBooksState> {
  NewSetBooksCubit({required this.homeRep}) : super(NewSetBooksInitial());
  final HomeRepo homeRep;

  Future<void> fetchNewestBooks() async {
    emit(NewSetBooksLoading());
    var result = await homeRep.fetchNewSetBook();

    result.fold((failure) {
      emit(NewSetBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(NewSetBooksSuccess(books: books));
    });
  }
}
