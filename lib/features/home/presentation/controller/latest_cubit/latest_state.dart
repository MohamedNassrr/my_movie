import 'package:my_movie/features/home/data/movie_model/Latest_model.dart';

abstract class LatestMovieStates{}

class LatestMovieInitialState extends LatestMovieStates{}

class LatestMovieLoadingState extends LatestMovieStates{}

class LatestMovieSuccessState extends LatestMovieStates{
  final List<LatestModel> model;

  LatestMovieSuccessState(this.model);
}

class LatestMovieErrorState extends LatestMovieStates{
  final String errMessage;

  LatestMovieErrorState(this.errMessage);
}