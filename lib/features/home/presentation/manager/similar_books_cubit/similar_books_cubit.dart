import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubitCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubitCubit(this.homeRepo) : super(SimilarBooksCubitInitial());
   final HomeRepo homeRepo;

  Future <void> fetchSimilarBooks ({required String category}) async{
    emit(SimilarBooksCubitLoading());
   var result = await  homeRepo.fetchSimilarBooks(category: category);
   result.fold((failure) {
    emit(SimilarBooksCubitFailure(failure.errMessage));
   }, (books) {
    emit(SimilarBooksCubitSuccess(books));
   });
  }
}
