import 'package:dio/dio.dart';
import 'package:my_movie/core/utils/api_key.dart';
//https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1

class ApiService {
  final _baseUrl = 'https://api.themoviedb.org/3/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get(
      options: Options(
        headers: {
          'Authorization': 'Bearer ${ApiKeys.secretKey}',
          'accept': 'application/json',
        }
      ),
      '$_baseUrl$endPoint',
    );

    return response.data;
  }
}
