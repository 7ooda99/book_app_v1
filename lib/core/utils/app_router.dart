import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:book_app/features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsScreen = '/detailsScreen';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: ((context, state) => const SplashView()),
      ),
      GoRoute(
        path: kHomeView,
        builder: ((context, state) => const HomeView()),
      ),
      GoRoute(
        path: kDetailsScreen,
        builder: ((context, state) =>  BlocProvider(
              create: (context) => SimilarBooksCubitCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel),
            )),
      ),
      GoRoute(
        path: kSearchView,
        builder: ((context, state) => const SearchView()),
      ),
    ],
  );
}
