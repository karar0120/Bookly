part of 'newset_books_cubit.dart';

abstract class NewSetBooksState extends Equatable {
  const NewSetBooksState();

  @override
  List<Object> get props => [];
}

class NewSetBooksInitial extends NewSetBooksState {}

class NewSetBooksLoading extends NewSetBooksState {}

class NewSetBooksSuccess extends NewSetBooksState {
  final List<BookModel> books;

  const NewSetBooksSuccess({required this.books});
}

class NewSetBooksFailure extends NewSetBooksState {
  final String errMessage;

  const NewSetBooksFailure({required this.errMessage});
}
