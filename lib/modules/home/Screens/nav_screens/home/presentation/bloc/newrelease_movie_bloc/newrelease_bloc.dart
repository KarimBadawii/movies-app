import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/movie_entity.dart';
import '../../../domain/entities/noparams.dart';
import '../../../domain/use_cases/get_upcomming_usecase.dart';

part 'newrelease_event.dart';

part 'newrelease_state.dart';

class NewReleaseBloc extends Bloc<NewreleaseEvent, NewReleaseState> {
  GetUpcomingUseCase getUpcomingUseCase;

  NewReleaseBloc({required this.getUpcomingUseCase})
      : super(NewReleaseInitial()) {
    on<NewreleaseEvent>((event, emit) async {
      var result = await getUpcomingUseCase.call(NoParams());
      result.fold((l) => emit(NewReleaseErrorState()),
          (r) => emit(NewReleaseLoadState(movies: r)));
    });
  }
}
