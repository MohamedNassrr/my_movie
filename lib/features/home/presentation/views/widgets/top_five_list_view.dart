import 'package:flutter/material.dart';
import 'package:my_movie/features/home/presentation/views/widgets/top_five_list_view_item.dart';

class TopFiveListView extends StatelessWidget {
  const TopFiveListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .350,
      child: ListView.builder(
        itemCount: 8,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 11.6,
            ),
            child: TopFiveListViewItem(),
          );
        },
      ),
    );
  }
}
