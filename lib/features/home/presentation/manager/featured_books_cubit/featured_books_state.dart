part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksLoaded extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksLoaded(this.books);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksFailure(this.errMessage);
}
