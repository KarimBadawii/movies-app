import '../../domain/entities/movie_entity.dart';

class MoviesModel extends MovieEntity {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  const MoviesModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
    // required super.backdropPath,
    // required super.id,
    // required super.posterPath,
    // required super.releaseDate,
    // required super.title,
  }) : super(
            id: id,
            title: title,
            posterPath: posterPath,
            backdropPath: backdropPath,
            releaseDate: releaseDate);

  factory MoviesModel.fromJson(dynamic json) {
    return MoviesModel(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [],
      id: json['id'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }
}
//       this.page,
//       this.results,
//       this.totalPages,
//       this.totalResults,});
//
//   PopularMoviesModel.fromJson(dynamic json) {
//     page = json['page'];
//     if (json['results'] != null) {
//       results = [];
//       json['results'].forEach((v) {
//         results?.add(Results.fromJson(v));
//       });
//     }
//     totalPages = json['total_pages'];
//     totalResults = json['total_results'];
//   }
//   int? page;
//   List<Results>? results;
//   int? totalPages;
//   int? totalResults;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['page'] = page;
//     if (results != null) {
//       map['results'] = results?.map((v) => v.toJson()).toList();
//     }
//     map['total_pages'] = totalPages;
//     map['total_results'] = totalResults;
//     return map;
//   }
//
// }
//
// class Results {
//   Results({
