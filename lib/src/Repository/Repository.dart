import 'dart:convert';

import 'package:moviestest/src/model/Genres_Model.dart';
import 'package:moviestest/src/model/Key_Model.dart';
import 'package:http/http.dart' as http;

class Repository {
  getCategories() async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/genre/movie/list?api_key=${MoviesKeys.apiKey}&language=pt-BR'));
    Map<String, dynamic> jsonResponse = jsonDecode(result.body);
    var genresList = jsonResponse['genres'];
    print(genresList);
    return genresList;
  }

  getMoviesByCategorie(int categoryID) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$categoryID/lists?api_key=${MoviesKeys.apiKey}&language=pt-BR&page=1'));
    // Map<String, dynamic> jsonResponse = jsonDecode(result.body);
    print(result.body);
  }

  getMovieDetails(int movieId) async {
    http.Response result = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/${movieId}?api_key=${MoviesKeys.apiKey}&language=pt-BR'));
    // Map<String, dynamic> jsonResponse = jsonDecode(result.body);
    print(result.body);
  }
}
