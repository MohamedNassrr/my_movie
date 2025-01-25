import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        builder: (BuildContext context, GoRouterState state) =>
            const DiscoveryView(),
      ),
    ],
  );
}
