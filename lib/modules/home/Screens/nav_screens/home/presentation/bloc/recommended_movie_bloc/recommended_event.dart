part of 'recommended_bloc.dart';

abstract class RecommendedEvent extends Equatable {}

class RecommendedInitialEvent extends RecommendedEvent {
  @override
  List<Object> get props => [];
}

class RecommendedErrorEvent extends RecommendedEvent {
  @override
  List<Object> get props => [];
}

class RecommendedLoadedEvent extends RecommendedEvent {
  @override
  List<Object> get props => [];
}
