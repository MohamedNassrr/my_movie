import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/presentation/views/widgets/movie_details_shadow.dart';

class MovieDetailsHeader extends StatelessWidget {
  const MovieDetailsHeader({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://image.tmdb.org/t/p/w500${movieModel.posterPath}',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          ClipPath(
            child: Align(
              alignment: AlignmentDirectional.topStart,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const MovieDetailsShadow(),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Text(
                '${movieModel.title}',
                style: Styles.textStyle30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
