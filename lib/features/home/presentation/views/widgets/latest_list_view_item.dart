import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/assets_data.dart';

class LatestListViewItem extends StatelessWidget {
  const LatestListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .476,
          height: MediaQuery.of(context).size.height * .35,
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
      ],
    );
  }
}
