import 'package:flutter/material.dart';
import 'package:my_movie/features/home/presentation/views/widgets/latest_list_view_item.dart';

class LatestListView extends StatelessWidget {
  const LatestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 9.6,
          ),
          child: LatestListViewItem(),
        );
      },
    );
  }
}
