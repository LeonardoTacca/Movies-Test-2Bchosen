import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:moviestest/src/model/Genres_Model.dart';
import 'package:moviestest/src/model/Key_Model.dart';
import 'package:moviestest/src/model/Movies_Model.dart';

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
      print(jsonResponse);
      return listGenresModel;
    }
  }

  getMoviesByCategories(int categoryID) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/discover/movie?api_key=${MoviesKeys.apiKey}&with_genres=$categoryID&language=pt-BR&page=1'));
    if (result.statusCode == 200) {
      var data = json.decode(result.body);
      Iterable jsonResponse = data['results'];
      print(jsonResponse);
      List<MoviesList> listMoviesModel =
          jsonResponse.map((model) => MoviesList.fromJson(model)).toList();
      return listMoviesModel;
    }
  }
}
