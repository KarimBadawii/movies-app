part of 'recommended_bloc.dart';

abstract class RecommendedState {}

final class RecommendedInitial extends RecommendedState {}

class RecommendedLoadingState extends RecommendedState {}

class RecommendedLoadedState extends RecommendedState {
  final List<MovieEntity> movies;

  RecommendedLoadedState({required this.movies});

  List<Object?> get props => [movies];
}

class RecommendedErrorState extends RecommendedState {}
