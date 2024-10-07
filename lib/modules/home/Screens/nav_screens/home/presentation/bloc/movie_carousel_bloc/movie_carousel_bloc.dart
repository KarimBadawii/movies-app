import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/movie_entity.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/noparams.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/use_cases/get_movies_usecase.dart';
import '../backdrop_movie_bloc/movie_backdrop_bloc.dart';

part 'movie_carousel_event.dart';

part 'movie_carousel_state.dart';

class MovieCarouselBloc extends Bloc<MovieCarouselEvent, MovieCarouselState> {
  GetMoviesUseCase getMoviesUseCase;
  final MovieBackdropBloc movieBackdropBloc;

  MovieCarouselBloc(
      {required this.getMoviesUseCase, required this.movieBackdropBloc})
      : super(MovieCarouselInitialState()) {
    on<MovieCarouselLoadEvent>((event, emit) async {
      var result = await getMoviesUseCase.call(NoParams());
      result.fold((l) => emit(MovieCarouselErrorState()), (r) {
        movieBackdropBloc.add(MovieBackdropChangedEvent(r[event.defaultIndex]));
        emit(MovieCarouselLoadedState(
            movies: r, defaultIndex: event.defaultIndex));
      });
    });
  }
}
