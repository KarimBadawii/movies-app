import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/entities/movie_entity.dart';

class MoviesModel extends MovieEntity {
  bool? adult;
  List<int>? genreIds;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MoviesModel({
    this.adult,
    super.backdropPath,
    this.genreIds,
    super.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    super.posterPath,
    super.releaseDate,
    super.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  MoviesModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
}

// class Results extends MoviesModel{
//
//
//   Results();
//
//   Results.fromJson(dynamic json) {
//     adult = json['adult'];
//     backdropPath = json['backdrop_path'];
//     genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
//     id = json['id'];
//     originalLanguage = json['original_language'];
//     originalTitle = json['original_title'];
//     overview = json['overview'];
//     popularity = json['popularity'];
//     posterPath = json['poster_path'];
//     releaseDate = json['release_date'];
//     title = json['title'];
//     video = json['video'];
//     voteAverage = json['vote_average'];
//     voteCount = json['vote_count'];
//   }
//
//
//
// }
