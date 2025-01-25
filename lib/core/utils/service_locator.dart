import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/home/data/repos/home_repo_impl.dart';

final gitIt = GetIt.instance;

void setupServerLocator() {
  gitIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  gitIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      gitIt.get<ApiService>(),
    ),
  );
}
