part of 'newrelease_bloc.dart';

abstract class NewReleaseState {
  NewReleaseState();
}

final class NewReleaseInitial extends NewReleaseState {}

final class NewReleaseErrorState extends NewReleaseState {}

final class NewReleaseLoadState extends NewReleaseState {
  final List<MovieEntity> movies;

  NewReleaseLoadState({required this.movies});

  List<Object> get props => [movies];
}
