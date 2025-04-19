import 'package:flutter/material.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/presentation/views/widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(child: MovieDetailsViewBody(movieModel: movieModel,)),
    );
  }
}
