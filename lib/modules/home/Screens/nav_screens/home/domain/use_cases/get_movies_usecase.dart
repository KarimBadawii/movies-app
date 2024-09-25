import 'package:movies_app/modules/home/Screens/nav_screens/home/data/models/Movies_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/repositories/home_repo.dart';

class GetMoviesUseCase {
  HomeRepo repo;

  GetMoviesUseCase(this.repo);

  Future<MoviesModel> call() => repo.getMovies();
}
