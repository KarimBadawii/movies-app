part of 'movie_carousel_bloc.dart';

class MovieCarouselState {
  MovieCarouselState();
}

final class MovieCarouselInitialState extends MovieCarouselState {
  // MovieCarouselInitial() : super(getMoviesState: RequestState.init);
}

final class MovieCarouselErrorState extends MovieCarouselState {}

final class MovieCarouselLoadedState extends MovieCarouselState {
  final List<MovieEntity> movies;
  final int defaultIndex;

  MovieCarouselLoadedState({
    required this.movies,
    this.defaultIndex = 0,
  });

  List<Object> get props => [movies, defaultIndex];
}
