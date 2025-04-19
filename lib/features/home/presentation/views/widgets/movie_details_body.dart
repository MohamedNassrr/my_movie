import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [

          Row(
            children: [
              Text(
                movieModel.voteAverage!.toStringAsFixed(1),
                style: Styles.textStyle18,
              ),
              const SizedBox(
                width: 9,
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Spacer(),
              Text(
                'numbers of watch: ${movieModel.popularity}',
              ),
            ],
          ),
          Text(
            'release date: ${movieModel.releaseDate.toString()}',
          ),
          Text(
            '${movieModel.overview}',
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
