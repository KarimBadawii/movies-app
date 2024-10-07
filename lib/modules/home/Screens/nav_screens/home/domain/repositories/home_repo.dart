import '../../data/models/model.dart';
import '../entities/app_error.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<AppError, List<MoviesModel>>> getMovies();

  Future<Either<AppError, List<MoviesModel>>> getUpcoming();

  Future<Either<AppError, List<MoviesModel>>> getTopRated();
}
