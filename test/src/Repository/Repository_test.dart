import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart' as http;
import 'package:moviestest/App/Data/Provider/Api_Provider.dart';
import 'package:moviestest/App/Data/Repository/Repository.dart';

void main() {
  final repository = Repository(apiClient: Api(httpInstance: http.Client()));

  test(
      'Verificar se o retorno da api getCategories existe, e como é o retorno da api',
      () async {
    await repository.getCategories();
  });
  test(
      'Verificar se o retorno da api getMoviesByCategories existe, e como é o retorno da api',
      () async {
    int category = 27;
    await Api(httpInstance: http.Client()).getMoviesByCategories(category, 1);
  });
  test(
      'Verificar se o retorno da api getMovieDetails existe, e como é o retorno da api',
      () async {
    int movieId = 580489;
    await Api(httpInstance: http.Client()).getMovieDetails(movieId);
  });
  test(
      'Verificar se o retorno da api getSimilarMovies existe, e como é o retorno da api',
      () async {
    int movieId = 580333;
    await Api(httpInstance: http.Client()).getSimilarMovies(movieId);
  });
  test(
      'Verificar se o retorno da api getPopularMovies existe, e como é o retorno da api',
      () async {
    await Api(httpInstance: http.Client()).getPopularMovies();
  });
}
