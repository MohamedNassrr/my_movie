import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/assets_data.dart';
import 'package:my_movie/core/utils/styles.dart';

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
            const TopFiveListViewItem(),
          ],
        ),
      ),
    );
  }
}

class TopFiveListViewItem extends StatelessWidget {
  const TopFiveListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AssetsData.testImage,
          ),
        ),
      ),
    );
  }
}
