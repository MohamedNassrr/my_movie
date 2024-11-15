import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/assets_data.dart';

class TopFiveListViewItem extends StatelessWidget {
  const TopFiveListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.86 / 0.566667,
      child: Container(
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
    );
  }
}
