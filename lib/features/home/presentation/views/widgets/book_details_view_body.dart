import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/utils/widgets/custom_button.dart';
import 'package:book_app/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'books_section.dart';
import 'custom_book_details_app_bar.dart';
import 'similar_books_list_view.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    BookDetailsSection(),
                    const Expanded(
                      child: SizedBox(
                        height: 50,
                      ),
                    ),
                    const SimilarBooksSection()
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}




