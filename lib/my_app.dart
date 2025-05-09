import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/utils/app_router.dart';
import 'package:my_movie/core/utils/service_locator.dart';
import 'package:my_movie/core/utils/theme_data.dart';
import 'package:my_movie/features/discover/data/repos/home_repo_impl.dart';
import 'package:my_movie/features/home/presentation/controller/home_cubit/cubit.dart';
import 'package:my_movie/features/home/presentation/controller/latest_movie_cubit/latest_movie_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set the system UI overlay style explicitly to ensure the status bar is white
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        // Set status bar color to white
        statusBarIconBrightness: Brightness.light,
        // Set icon brightness to dark for visibility
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LatestMovieCubit(getIt.get<HomeRepoImpl>())..getLatestMovies(),
        ),
        BlocProvider(
          create: (context) =>
              TopFiveCubit(getIt.get<HomeRepoImpl>())..getTopFive(),
        ),
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
