import 'package:dartz/dartz.dart';
import 'package:my_movie/core/error/failure.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieModel>>> fetchTopFiveMovies();
  Future<Either<Failure, List<MovieModel>>> fetchLatestMovies();
  Future<Either<Failure, List<MovieModel>>> fetchSeeMoreMovies();
}
