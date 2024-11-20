import 'package:my_movie/features/home/data/movie_model/Top_five_model.dart';

abstract class TopFiveStates{}

class TopFiveInitialState extends TopFiveStates{}

class TopFiveLoadingState extends TopFiveStates{}

class TopFiveSuccessState extends TopFiveStates{
  // why we sent data in status? bec we deal with List
  final List<TopFiveModel> model;

  TopFiveSuccessState(this.model);
}

class TopFiveErrorState extends TopFiveStates{
  final String errMessage;

  TopFiveErrorState(this.errMessage);
}