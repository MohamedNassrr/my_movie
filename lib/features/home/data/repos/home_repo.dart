import 'package:dartz/dartz.dart';
import 'package:my_movie/core/error/failure.dart';
import 'package:my_movie/features/home/data/movie_model/Top_five_model.dart';
import 'package:my_movie/features/home/data/movie_model/movie_model.dart';


abstract class HomeRepo{
  Future<Either<Failure ,List<TopFiveModel>>> fetchTopFiveMovie();
  Future<Either<Failure,List<MovieModel>>> fetchLatestMovie();
}