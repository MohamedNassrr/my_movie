import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

class LatestListViewDetailItem extends StatelessWidget {
  const LatestListViewDetailItem({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
           Row(
            children: [
              Flexible(
                child: Text(
                  movieModel.originalTitle,
                  style: Styles.textStyle19,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
           Row(
            children: [
              Text(
                '${movieModel.voteAverage}',
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
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                'Action',
                style: Styles.textStyle13,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  '${movieModel.overview}',
                  style: Styles.textStyle13.copyWith(
                    color: const Color(0xff888888),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
