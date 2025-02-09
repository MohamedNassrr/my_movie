import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_movie/core/utils/assets_data.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/discover/presentation/controller/discover_movie_cubit/discover_movie_cubit.dart';
import 'package:my_movie/features/discover/presentation/controller/discover_movie_cubit/discover_movie_states.dart';

class DiscoveryView extends StatelessWidget {
  const DiscoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverMovieCubit, DiscoverMovieStates>(
      builder: (context, state) {
        var cubit = BlocProvider.of<DiscoverMovieCubit>(context);
        return DefaultTabController(
          length: cubit.tabBarItem.length,
          initialIndex: 0,
          child: Scaffold(
              body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        child: SvgPicture.asset(
                          AssetsData.backButtonImage,
                        ),
                      ),
                      const SizedBox(
                        width: 29.77,
                      ),
                      const Text(
                        'Discover',
                        style: Styles.textStyle30,
                      ),
                      Text(
                        '.',
                        style: Styles.textStyle30.copyWith(color: Colors.amber),
                      ),
                    ],
                  ),
                  TabBar(
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    padding: EdgeInsets.zero,
                    indicator: const BoxDecoration(color: Colors.transparent),
                    labelColor: Colors.white,
                    tabs: cubit.tabBarItem,
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: TabBarView(
                      children: cubit.tabBarScreens,
                    ),
                  )
                  // DiscoveryViewBody(),
                ],
              ),
            ),
          )),
        );
      },
    );
  }
}
