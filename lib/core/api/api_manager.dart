import 'package:dio/dio.dart';

class ApiManager {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "19a7638b77a96847e367e39b209cb438";
  static const String adhamApiKey = "7391822f97687822e06a7c94141886f8";


  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? param}) {
    return dio.get(baseUrl + endPoint + apiKey, queryParameters: param);
  }

  Future<Response> getCategories(
      {required String endPoint}) {
    return dio.get(baseUrl+endPoint, queryParameters: {"api_key" : adhamApiKey} );
  }

  Future<Response> getCategory(
      {required String endPoint}) {
    return dio.get(baseUrl+endPoint, queryParameters: {"api_key" : adhamApiKey} );
  }

}
