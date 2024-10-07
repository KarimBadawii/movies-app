import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/movie_entity.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/noparams.dart';
import '../../../domain/use_cases/get_top_rated_usecase.dart';

part 'recommended_event.dart';

part 'recommended_state.dart';

class RecommendedBloc extends Bloc<RecommendedEvent, RecommendedState> {
  GetTopRatedUseCase getTopRatedUseCase;

  RecommendedBloc({required this.getTopRatedUseCase})
      : super(RecommendedInitial()) {
    on<RecommendedEvent>((event, emit) async {
      var results = await getTopRatedUseCase.call(NoParams());
      results.fold((l) => emit(RecommendedErrorState()),
          (r) => emit(RecommendedLoadedState(movies: r)));
    });
  }
}
