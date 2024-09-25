import 'package:dio/dio.dart';

class ApiManager {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "19a7638b77a96847e367e39b209cb438";

  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? param}) {
    return dio.get(baseUrl + endPoint + apiKey, queryParameters: param);
  }
}
