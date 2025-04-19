import 'package:flutter/material.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/presentation/views/widgets/movie_details_body.dart';
import 'package:my_movie/features/home/presentation/views/widgets/movie_details_header.dart';

class MovieDetailsViewBody extends StatelessWidget {
  const MovieDetailsViewBody({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          MovieDetailsHeader(movieModel: movieModel,),
          const SizedBox(height: 12),
           MovieDetailsBody(movieModel: movieModel,),
        ],
      ),
    );
  }
}
