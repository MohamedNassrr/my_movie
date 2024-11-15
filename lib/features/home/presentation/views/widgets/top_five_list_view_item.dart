import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/assets_data.dart';
import 'package:my_movie/core/utils/styles.dart';

class TopFiveListViewItem extends StatelessWidget {
  const TopFiveListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .763,
          height: MediaQuery.of(context).size.height * .252,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImage,
              ),
            ),
          ),
          child: ClipPath(
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline_sharp,
                  size: 32,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ),
        Text(
          'Hitman’s Wife’s Bodyguard',
          style: Styles.textStyle19.copyWith(
          ),
        ),
      ],
    );
  }
}
