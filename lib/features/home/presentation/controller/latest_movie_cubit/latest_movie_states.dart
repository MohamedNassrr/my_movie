import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

abstract class LatestMovieStates{}

class LatestMovieInitialStates extends LatestMovieStates{}

class LatestMovieLoadingStates extends LatestMovieStates{}

class LatestMovieSuccessStates extends LatestMovieStates{
  final List<MovieModel> movie;

  LatestMovieSuccessStates(this.movie);
}

class LatestMovieErrorStates extends LatestMovieStates{
  final String errMessage;

  LatestMovieErrorStates(this.errMessage);
}