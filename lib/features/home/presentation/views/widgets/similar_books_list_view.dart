import 'package:book_app/core/utils/widgets/custom_error_widget.dart';
import 'package:book_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:book_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .13,
    
    child: ListView.builder(
      itemCount:state.books.length ,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: CustomBookImage(
            imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail??''
          ),
        );
      },
    ),
  );
} else if (state is SimilarBooksCubitFailure)
{
  return CustomErrorWidget(errMessage: state.errMessage);
}else{
  return CustomLoadingIndicator();
}
      },
    );
  }
}
