import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:http/http.dart' as http;
import 'package:moviestest/src/Repository/Repository.dart';

void main() {
  final repository = Repository(apiClient: Api(httpInstance: http.Client()));

  test('Verificar se o retorno da api getCategories', () async {
    await repository.getCategories();
  });
  test('Verificar se o retorno da api getMoviesByCategorie', () async {
    int movieId = 27;
    await Api(httpInstance: http.Client()).getMoviesByCategories(movieId);
  });
}
