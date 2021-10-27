import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:moviestest/App/Data/model/CategoryMovieDetails.dart';
import 'package:moviestest/App/Data/model/Genres_Model.dart';
import 'package:moviestest/App/Data/model/Key_Model.dart';
import 'package:moviestest/App/Data/model/Movies_Model.dart';
import 'package:moviestest/App/Data/model/SimilarMoviesDetails.dart';




class Api extends GetConnect {
  late final http.Client httpInstance;
  Api({required this.httpInstance});

  getCategories() async {
    http.Response result = await httpInstance.get(Uri.parse(
        'https://api.themoviedb.org/3/genre/movie/list?api_key=${MoviesKeys.apiKey}&language=pt-BR'));
    if (result.statusCode == 200) {
      var data = json.decode(result.body);
      Iterable jsonResponse = data['genres'];
      List<GenresModel> listGenresModel =
          jsonResponse.map((model) => GenresModel.fromJson(model)).toList();

      return listGenresModel;
    }
  }

  getMoviesByCategories(int categoryID, int pageNumber) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/discover/movie?api_key=${MoviesKeys.apiKey}&with_genres=$categoryID&language=pt-BR&page=$pageNumber'));
    if (result.statusCode == 200) {
      var data = json.decode(result.body);
      Iterable jsonResponse = data['results'];

      List<MoviesList> listMoviesModel =
          jsonResponse.map((model) => MoviesList.fromJson(model)).toList();
      return listMoviesModel;
    }
  }

  getMovieDetails(int movieId) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=${MoviesKeys.apiKey}&language=pt-BR'));
    if (result.statusCode == 200) {
      var data = CategoryMovieDetails.fromJson(json.decode(result.body));
      List results = [
        data.id,
        data.title,
        data.overview,
        data.popularity,
        data.voteAverage,
        data.backdropPath,
        data.posterPath,
        data.runtime,
        data.releaseDate
      ];
      return results;
    }
  }

  getSimilarMovies(int movieId) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$movieId/similar?api_key=${MoviesKeys.apiKey}&language=pt-BR&page=1'));
    if (result.statusCode == 200) {
      var data = json.decode(result.body);
      Iterable jsonResponse = data['results'];

      List<SimilarMoviesDetails> listSimilarMoviesModel = jsonResponse
          .map((model) => SimilarMoviesDetails.fromJson(model))
          .toList();
      return listSimilarMoviesModel;
    }
  }

  getPopularMovies() async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=${MoviesKeys.apiKey}&language=pt-BR&page=1'));
    if (result.statusCode == 200) {
      var data = json.decode(result.body);
      Iterable jsonResponse = data['results'];
      List<MoviesList> listMoviesModel =
          jsonResponse.map((model) => MoviesList.fromJson(model)).toList();
      return listMoviesModel;
    }
  }
}
