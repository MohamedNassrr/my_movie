import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/presentation/views/widgets/top_five_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}

class TopFiveListView extends StatelessWidget {
  const TopFiveListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .253,
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
