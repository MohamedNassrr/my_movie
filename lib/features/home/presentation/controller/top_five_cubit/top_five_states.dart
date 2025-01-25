import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

abstract class TopFiveStates{}

class TopFiveInitialStates extends TopFiveStates{}

class TopFiveLoadingStates extends TopFiveStates{}

class TopFiveSuccessStates extends TopFiveStates{
  final List<MovieModel> movies;

  TopFiveSuccessStates(this.movies);
}

class TopFiveErrorStates extends TopFiveStates{
  final String errMessage;

  TopFiveErrorStates(this.errMessage);
}