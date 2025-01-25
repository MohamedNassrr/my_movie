import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_movie/core/error/failure.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<MovieModel>>> fetchTopFiveMovies() async {
    try {
      var data = await apiService.get(endPoint: 'movie/top_rated?');
      List<MovieModel> movies = [];
      for (var result in data['results']) {
        try {
          movies.add(MovieModel.fromJson(result));
        } catch (e) {
          movies.add(MovieModel.fromJson(result));
        }
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchLatestMovies() async {
    try {
      var data = await apiService.get(endPoint: 'discover/movie');
      List<MovieModel> movies = [];
      for (var result in data['results']) {
        try {
          movies.add(MovieModel.fromJson(result));
        } catch (e) {
          movies.add(MovieModel.fromJson(result));
        }
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchSeeMoreMovies() async {
    try {
      var data = await apiService.get(endPoint: 'discover/movie');
      List<MovieModel> movies = [];
      for (var result in data['results']) {
        try {
          movies.add(MovieModel.fromJson(result));
        } catch (e) {
          movies.add(MovieModel.fromJson(result));
        }
      }
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
