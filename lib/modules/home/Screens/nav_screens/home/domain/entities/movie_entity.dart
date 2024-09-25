class MovieEntity {
  String? backdropPath;
  int? id;
  String? posterPath;
  String? releaseDate;
  String? title;

  MovieEntity(
      {this.backdropPath,
      this.id,
      this.posterPath,
      this.releaseDate,
      this.title});

  MovieEntity.fromJson(dynamic json) {
    backdropPath = json['backdrop_path'];
    id = json['id'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
  }
}
