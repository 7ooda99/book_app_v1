part of 'similar_books_cubit.dart';

abstract class SimilarBooksCubitState extends Equatable {
  const SimilarBooksCubitState();

  @override
  List<Object> get props => [];
}

class SimilarBooksCubitInitial extends SimilarBooksCubitState {}
class SimilarBooksCubitFailure extends SimilarBooksCubitState {
  final String errMessage;

  const SimilarBooksCubitFailure(this.errMessage);
}
class SimilarBooksCubitSuccess extends SimilarBooksCubitState {
  final List<BookModel> books;

  const SimilarBooksCubitSuccess(this.books);
}
class SimilarBooksCubitLoading extends SimilarBooksCubitState {}
