import 'package:movies_app/modules/home/Screens/nav_screens/home/data/models/model.dart';

class PopularMoviesModel {
  List<MoviesModel>? movies;

  PopularMoviesModel({
    this.movies,
  });

  PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      movies = <MoviesModel>[];
      json['results'].forEach((v) {
        movies!.add(MoviesModel.fromJson(v));
      });
    }
  }
}

// class Results {
//   bool? adult;
//   String? backdropPath;
//   List<int>? genreIds;
//   int? id;
//   String? originalLanguage;
//   String? originalTitle;
//   String? overview;
//   double? popularity;
//   String? posterPath;
//   String? releaseDate;
//   String? title;
//   bool? video;
//   double? voteAverage;
//   int? voteCount;
//
//   Results(
//       {this.adult,
//         this.backdropPath,
//         this.genreIds,
//         this.id,
//         this.originalLanguage,
//         this.originalTitle,
//         this.overview,
//         this.popularity,
//         this.posterPath,
//         this.releaseDate,
//         this.title,
//         this.video,
//         this.voteAverage,
//         this.voteCount});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     adult = json['adult'];
//     backdropPath = json['backdrop_path'];
//     genreIds = json['genre_ids'].cast<int>();
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
// }
