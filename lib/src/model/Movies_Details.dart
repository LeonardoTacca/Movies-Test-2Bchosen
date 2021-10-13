class MovieDetail {
  late bool adult;
  late Null backdropPath;
  late Null belongsToCollection;
  late int budget;
  late List genres;
  late Null homepage;
  late int id;
  late String imdbId;
  late String originalLanguage;
  late String originalTitle;
  late String overview;
  late double popularity;
  late Null posterPath;
  late List productionCompanies;
  late List<ProductionCountries> productionCountries;
  late String releaseDate;
  late int revenue;
  late int runtime;
  late List<SpokenLanguages> spokenLanguages;
  late String status;
  late String tagline;
  late String title;
  late bool video;
  late int voteAverage;
  late int voteCount;

  MovieDetail(
      {required this.adult,
      this.backdropPath,
      this.belongsToCollection,
      required this.budget,
      required this.genres,
      this.homepage,
      required this.id,
      required this.imdbId,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      this.posterPath,
      required this.productionCompanies,
      required this.productionCountries,
      required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.spokenLanguages,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount});

  MovieDetail.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    belongsToCollection = json['belongs_to_collection'];
    budget = json['budget'];

    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    status = json['status'];
    tagline = json['tagline'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['belongs_to_collection'] = this.belongsToCollection;
    data['budget'] = this.budget;
    if (this.genres != null) {
      data['genres'] = this.genres.map((v) => v!.toJson()).toList();
    }
    data['homepage'] = this.homepage;
    data['id'] = this.id;
    data['imdb_id'] = this.imdbId;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['popularity'] = this.popularity;
    data['poster_path'] = this.posterPath;
    if (this.productionCompanies != null) {
      data['production_companies'] =
          this.productionCompanies.map((v) => v!.toJson()).toList();
    }
    if (this.productionCountries != null) {
      data['production_countries'] =
          this.productionCountries.map((v) => v.toJson()).toList();
    }
    data['release_date'] = this.releaseDate;
    data['revenue'] = this.revenue;
    data['runtime'] = this.runtime;
    if (this.spokenLanguages != null) {
      data['spoken_languages'] =
          this.spokenLanguages.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['tagline'] = this.tagline;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}

class ProductionCountries {
  late String iso31661;
  late String name;

  ProductionCountries({required this.iso31661, required this.name});

  ProductionCountries.fromJson(Map<String, dynamic> json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso_3166_1'] = this.iso31661;
    data['name'] = this.name;
    return data;
  }
}

class SpokenLanguages {
  late String englishName;
  late String iso6391;
  late String name;

  SpokenLanguages(
      {required this.englishName, required this.iso6391, required this.name});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['english_name'] = this.englishName;
    data['iso_639_1'] = this.iso6391;
    data['name'] = this.name;
    return data;
  }
}
