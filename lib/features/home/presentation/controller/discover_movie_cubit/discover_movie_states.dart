import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

abstract class DiscoverMovieStates{}

class DiscoverMovieInitialStates extends DiscoverMovieStates{}

class DiscoverMovieLoadingStates extends DiscoverMovieStates{}

class DiscoverMovieSuccessStates extends DiscoverMovieStates{
  final List<MovieModel> movies;

  DiscoverMovieSuccessStates(this.movies);
}

class DiscoverMovieErrorStates extends DiscoverMovieStates{
  final String errMessage;

  DiscoverMovieErrorStates(this.errMessage);
}