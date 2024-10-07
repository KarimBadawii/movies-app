import 'package:dartz/dartz.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/data_sources/remote/home_remote_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/app_error.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/repositories/home_repo.dart';
import '../models/model.dart';

class HomeRepoImp implements HomeRepo {
  HomeRemoteDS homeDS;
  HomeRepoImp(this.homeDS);

  @override
  Future<Either<AppError, List<MoviesModel>>> getMovies() async {
    try {
      var movies = await homeDS.getMovies();
      return right(movies);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<AppError, List<MoviesModel>>> getTopRated() async {
    try {
      var movies = await homeDS.getTopRated();
      return right(movies);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<AppError, List<MoviesModel>>> getUpcoming() async {
    try {
      var movies = await homeDS.getUpcoming();
      return right(movies);
    } catch (e) {
      rethrow;
    }
  }
}
