import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:http/http.dart' as http;
import 'package:moviestest/src/Repository/Repository.dart';

void main() {
  final repository = Repository(apiClient: Api(httpInstance: http.Client()));

  test('Verificar se o retorno da api getCategories existe', () async {
    await repository.getCategories();
  });
  test('Verificar se o retorno da api getMoviesByCategories existe', () async {
    int category = 27;
    await Api(httpInstance: http.Client()).getMoviesByCategories(category, 1);
  });
  test('Verificar se o retorno da api getMovieDetails existe', () async {
    int movieId = 580489;
    await Api(httpInstance: http.Client()).getMovieDetails(movieId);
  });
}
