import 'package:dartz/dartz.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/app_error.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/repositories/home_repo.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/use_cases/usecase.dart';
import '../entities/movie_entity.dart';
import '../entities/noparams.dart';

class GetUpcomingUseCase extends UseCase<List<MovieEntity>, NoParams> {
  HomeRepo repo;

  GetUpcomingUseCase(this.repo);

  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repo.getUpcoming();
  }
}
