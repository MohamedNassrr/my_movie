import 'package:dio/dio.dart';

abstract class Failure{
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure{
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException){
    switch(dioException.type){
      case DioExceptionType.connectionTimeout:
        return ServerFailure('no internet connection, please try again later!');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send timeout in apiServer, please try again later!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout in apiServer, please try again later!');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate in apiServer, please try again later!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request cancelled in apiServer, please try again later!');
      case DioExceptionType.connectionError:
        return ServerFailure('connection error in apiServer, please try again later!');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please Try Again!');
      default:
        return ServerFailure('Ops There Was an Error, Please try again later');
    }
  }


  factory ServerFailure.fromResponse(int statusCode, dynamic response){
    if(statusCode == 400 || statusCode == 401 || statusCode == 403){
      return ServerFailure(response['status_message']);
    }else if(statusCode == 404){
      return ServerFailure('Request not found, please try again later!');
    }else if(statusCode == 500){
      return ServerFailure('Internal server error, please try again later!');
    }else{
      return ServerFailure('Ops there was an error, please try again later');
    }
  }
}