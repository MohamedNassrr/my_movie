import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/assets_data.dart';
import 'package:my_movie/core/utils/styles.dart';

class CustomGridList extends StatelessWidget {
  const CustomGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 15,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 2 / 4.352,
      crossAxisCount: 2,
      children: List.generate(
        15,
        (index) => GestureDetector(
          onTap: () {
            print('list pressed');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .476,
                height: MediaQuery.of(context).size.height * .35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
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
                      onPressed: () {
                        print('pressed');
                      },
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
                'This move is move',
                style: Styles.textStyle18,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    '5.5',
                    style: Styles.textStyle18,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
