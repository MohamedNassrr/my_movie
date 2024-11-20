import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_movie/core/error/failure.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/home/data/movie_model/Top_five_model.dart';
import 'package:my_movie/features/home/data/movie_model/movie_model.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<TopFiveModel>>> fetchTopFiveMovie() async {
    try {
      var data = await apiService.get(
        endPoint: 'movie/top_rated?language=en-US',
      );
      List<TopFiveModel> movie = [];

      return right(movie);
    } catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> fetchLatestMovie() {
    // TODO: implement fetchTopFiveMovie
    throw UnimplementedError();
  }
}
