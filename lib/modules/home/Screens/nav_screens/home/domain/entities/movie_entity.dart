import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final String? backdropPath;
  final int? id;
  final String? posterPath;
  final String? releaseDate;
  final String? title;

  const MovieEntity(
      {required this.backdropPath,
      required this.id,
      required this.posterPath,
      required this.releaseDate,
      required this.title})
      : assert(id != null, "id can not be null");

  @override
  List<Object?> get props => [id, title];
}

@override
bool get stringify => true;
