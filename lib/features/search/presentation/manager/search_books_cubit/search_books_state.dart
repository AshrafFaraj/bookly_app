part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksSuccess extends SearchBooksState {
  const SearchBooksSuccess(this.books);
  final List<BookModel> books;
}

final class SearchBooksFailure extends SearchBooksState {
  const SearchBooksFailure(this.errMessage);
  final String errMessage;
}
