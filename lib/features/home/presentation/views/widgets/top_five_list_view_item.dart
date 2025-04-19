import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

class TopFiveListViewItem extends StatelessWidget {
  const TopFiveListViewItem({super.key, required this.movieModel});
  final MovieModel movieModel;
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
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://image.tmdb.org/t/p/w500${movieModel.posterPath}',

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
          movieModel.originalTitle,
          style: Styles.textStyle19,
        ),
        Row(
          children: [
            Text(
              movieModel.voteAverage!.toStringAsFixed(1),
              style: Styles.textStyle19.copyWith(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
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
    );
  }
}
