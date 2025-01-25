import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:my_movie/core/utils/assets_data.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/presentation/views/widgets/discover_grid_list.dart';
import 'package:my_movie/features/home/presentation/views/widgets/discover_list_view.dart';

class DiscoveryViewBody extends StatelessWidget {
  const DiscoveryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 33, right: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
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
                const SizedBox(
                  height: 10,
                ),
                const DiscoverListView(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: DiscoverGridList(),
          ),
        ],
      ),
    );
  }
}
