class MoviesList {
  late bool adult;
  late String backdropPath;
  late List spokenLinguages;
  late int id;
  late int runtime;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late var popularity;
  late String posterPath;
  late String releaseDate;
  late String title;
  late var voteAverage;

  MoviesList(
      {required this.adult,
      required this.backdropPath,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.voteAverage,
      required this.runtime,
      required this.spokenLinguages});

  MoviesList.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'] ?? 'wwemzKWzjKYJFfCeiB57q3r4Bcm.png';
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    voteAverage = json['vote_average'];
    runtime = json['runtime'] ?? 0;
    spokenLinguages = json['spoken_languages'] ?? [];
  }
}
