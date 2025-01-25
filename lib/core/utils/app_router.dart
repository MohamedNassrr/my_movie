import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/home/data/repos/home_repo_impl.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_cubit.dart';
import 'package:my_movie/features/home/presentation/views/discovery_view.dart';
import 'package:my_movie/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kDiscovery = '/DiscoveryView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomeView(),
      ),
      GoRoute(
        path: kDiscovery,
        builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (BuildContext context) => DiscoverMovieCubit(
                  HomeRepoImpl(
                    ApiService(
                      Dio(),
                    ),
                  ),
                )..getDiscoverMovie(),
            child: DiscoveryView()),
      ),
    ],
  );
}
