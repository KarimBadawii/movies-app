part of 'newrelease_bloc.dart';

abstract class NewreleaseEvent extends Equatable {
  const NewreleaseEvent();

  @override
  List<Object> get props => [];
}

class NewreleaseLoadEvent extends NewreleaseEvent {
  const NewreleaseLoadEvent();

  @override
  List<Object> get props => [];
}
