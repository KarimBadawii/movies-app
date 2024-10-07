import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/movie_entity.dart';

part 'movie_backdrop_event.dart';

part 'movie_backdrop_state.dart';

class MovieBackdropBloc extends Bloc<MovieBackdropEvent, MovieBackdropState> {
  MovieBackdropBloc() : super(MovieBackdropInitial()) {
    on<MovieBackdropEvent>((event, emit) {
      if (event is MovieBackdropChangedEvent) {
        emit(MovieBackdropChangedState(event.movie));
      }
    });
  }
}
