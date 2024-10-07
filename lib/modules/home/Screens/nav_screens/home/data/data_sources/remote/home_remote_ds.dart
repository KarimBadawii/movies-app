import '../../models/model.dart';

abstract class HomeRemoteDS {
  Future<List<MoviesModel>> getMovies();

  Future<List<MoviesModel>> getUpcoming();

  Future<List<MoviesModel>> getTopRated();
}
