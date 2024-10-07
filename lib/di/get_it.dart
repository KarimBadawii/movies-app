import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/data_sources/remote/home_remote_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/data_sources/remote/home_remote_ds_impl.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/repositories/home_repo_imp.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/repositories/home_repo.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/use_cases/get_movies_usecase.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/use_cases/get_top_rated_usecase.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/use_cases/get_upcomming_usecase.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/backdrop_movie_bloc/movie_backdrop_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/presentation/bloc/newrelease_movie_bloc/newrelease_bloc.dart';
import '../core/api/api_manager.dart';
import '../modules/home/Screens/nav_screens/home/presentation/bloc/movie_carousel_bloc/movie_carousel_bloc.dart';
import '../modules/home/Screens/nav_screens/home/presentation/bloc/recommended_movie_bloc/recommended_bloc.dart';

final getItInstance = GetIt.instance;

Future init() async {
  getItInstance.registerLazySingleton<Dio>(() => Dio());
  getItInstance.registerLazySingleton<ApiManager>(() => ApiManager());

  getItInstance.registerLazySingleton<HomeRemoteDS>(
      () => HomeRepoDSImpl(getItInstance()));
  // use cases
  getItInstance.registerLazySingleton<GetMoviesUseCase>(
      () => GetMoviesUseCase(getItInstance()));
  getItInstance.registerLazySingleton<GetUpcomingUseCase>(
      () => GetUpcomingUseCase(getItInstance()));
  getItInstance.registerLazySingleton<GetTopRatedUseCase>(
      () => GetTopRatedUseCase(getItInstance()));
  getItInstance
      .registerLazySingleton<HomeRepo>(() => HomeRepoImp(getItInstance()));
  // blocs
  getItInstance.registerFactory(() => MovieCarouselBloc(
      getMoviesUseCase: getItInstance(), movieBackdropBloc: getItInstance()));
  getItInstance.registerFactory(
      () => NewReleaseBloc(getUpcomingUseCase: getItInstance()));
  getItInstance.registerFactory(
      () => RecommendedBloc(getTopRatedUseCase: getItInstance()));
  getItInstance.registerFactory(() => MovieBackdropBloc());
}
