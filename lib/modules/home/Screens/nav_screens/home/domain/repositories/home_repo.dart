import '../../data/models/Movies_model.dart';

abstract class HomeRepo {
  Future<MoviesModel> getMovies();
}
