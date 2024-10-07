part of 'movie_backdrop_bloc.dart';

abstract class MovieBackdropEvent {}

class MovieBackdropChangedEvent extends MovieBackdropEvent {
  final MovieEntity movie;

  MovieBackdropChangedEvent(this.movie);

  List<Object?> get props => [movie];
}
