import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_movie/core/utils/api_service.dart';
import 'package:my_movie/features/discover/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServerLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
