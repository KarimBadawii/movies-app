part of 'movie_backdrop_bloc.dart';

abstract class MovieBackdropState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class MovieBackdropInitial extends MovieBackdropState {}

class MovieBackdropChangedState extends MovieBackdropState {
  final MovieEntity movie;

  MovieBackdropChangedState(this.movie);

  @override
  List<Object?> get props => [movie];
}
