import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/presentation/views/widgets/latest_list_view.dart';
import 'package:my_movie/features/home/presentation/views/widgets/top_five_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 13,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 33,
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Top Five',
                        style: Styles.textStyle30,
                      ),
                      Text(
                        '.',
                        style: Styles.textStyle30.copyWith(color: Colors.amber),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TopFiveListView(),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Latest',
                      style: Styles.textStyle30,
                    ),
                    Text(
                      '.',
                      style: Styles.textStyle30.copyWith(color: Colors.amber),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SEE MORE',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                const LatestListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

