import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kMainColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

