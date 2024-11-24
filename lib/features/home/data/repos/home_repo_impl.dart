import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_movie/core/error/failure.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/home/data/movie_model/Latest_model.dart';
import 'package:my_movie/features/home/data/movie_model/Top_five_model.dart';
import 'package:my_movie/features/home/data/movie_model/movie_model.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<TopFiveModel>>> fetchTopFiveMovie() async {
    try {
      await apiService.get(
        endPoint: 'movie/top_rated?language=en-US',


      );
      List<TopFiveModel> topFiveModel = [];

      return right(topFiveModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<LatestModel>>> fetchLatestMovie() async {
    try {
      await apiService.get(
        endPoint: 'movie/latest',
      );
      List<LatestModel> latestModel = [];

      return right(latestModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchDiscoverMovie() async {
    try {
       await apiService.get(
        endPoint:
            'discover/movie?include_adult=false&include_video=false&language=en-US',
      );

      List<MovieModel> movieModel = [];

      return right(movieModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
