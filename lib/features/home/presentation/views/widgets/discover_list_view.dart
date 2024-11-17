import 'package:flutter/material.dart';
import 'package:my_movie/features/home/presentation/views/widgets/discover_list_view_item.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: const DiscoverListViewItem(),
          ),
        );
      },
    );
  }
}
