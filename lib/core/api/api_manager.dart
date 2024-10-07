import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiManager {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String imageUrlSmall = "https://image.tmdb.org/t/p/w500";
  static const String imageUrlOriginal = "https://image.tmdb.org/t/p/original";
  static const String apikey = "api_key=19a7638b77a96847e367e39b209cb438";
  late Dio dio;

  ApiManager() {
    dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
  }

  Future<Response> getData(
      {required String endPoint, Map<String, dynamic>? param}) {
    return dio.get(endPoint, queryParameters: param);
  }
}
