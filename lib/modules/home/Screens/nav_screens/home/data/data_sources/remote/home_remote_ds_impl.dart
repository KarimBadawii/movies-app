import 'package:dio/dio.dart';
import 'package:movies_app/core/api/endpoints.dart';
import 'package:movies_app/core/api/status_code.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/data_sources/remote/home_remote_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/models/popular_movies_model.dart';
import '../../../../../../../../core/api/api_manager.dart';
import '../../models/model.dart';

class HomeRepoDSImpl implements HomeRemoteDS {
  ApiManager apiManager;

  HomeRepoDSImpl(this.apiManager);

  @override
  Future<List<MoviesModel>> getMovies() async {
    Response response = await apiManager.getData(
        endPoint: EndPoints.popularMovies,
        param: {"api_key": "19a7638b77a96847e367e39b209cb438"});
    if (response.statusCode == StatusCode.success) {
      final movies = PopularMoviesModel.fromJson(response.data).movies;
      return movies ?? [];
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Future<List<MoviesModel>> getUpcoming() async {
    Response response = await apiManager.getData(
        endPoint: EndPoints.upcomingMovies,
        param: {"api_key": "19a7638b77a96847e367e39b209cb438"});
    if (response.statusCode == StatusCode.success) {
      final movies = PopularMoviesModel.fromJson(response.data).movies;
      return movies ?? [];
    } else {
      throw Exception('Failed to load movies');
    }
  }

  @override
  Future<List<MoviesModel>> getTopRated() async {
    Response response = await apiManager.getData(
        endPoint: EndPoints.topRatedMovies,
        param: {"api_key": "19a7638b77a96847e367e39b209cb438"});
    if (response.statusCode == StatusCode.success) {
      final movies = PopularMoviesModel.fromJson(response.data).movies;
      return movies ?? [];
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
