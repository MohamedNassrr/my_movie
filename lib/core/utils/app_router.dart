import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/discover/presentation/controller/discover_movie_cubit/discover_movie_cubit.dart';
import 'package:my_movie/features/discover/presentation/views/discovery_view.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/data/repos/home_repo_impl.dart';
import 'package:my_movie/features/home/presentation/views/home_view.dart';
import 'package:my_movie/features/home/presentation/views/movie_details_view.dart';

abstract class AppRouter {
  static const rDiscovery = '/DiscoveryView';
  static const rMovieDetailsView = '/MovieDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: rDiscovery,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (BuildContext context) => DiscoverMovieCubit(
                  HomeRepoImpl(
                    ApiService(
                      Dio(),
                    ),
                  ),
                )..getDiscoverMovie(),
            child: const DiscoveryView()),
      ),
      GoRoute(
        path: rMovieDetailsView,
        builder: (BuildContext context, GoRouterState state) =>
            MovieDetailsView(
          movieModel: state.extra as MovieModel,
        ),
      ),
    ],
  );
}
