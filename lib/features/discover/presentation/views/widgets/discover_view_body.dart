import 'package:flutter/material.dart';
import 'package:my_movie/features/discover/presentation/views/widgets/discover_grid_list.dart';

class DiscoveryViewBody extends StatelessWidget {
  const DiscoveryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
         SliverToBoxAdapter(
          child: DiscoverGridList(),
        ),
      ],
    );
  }
}
