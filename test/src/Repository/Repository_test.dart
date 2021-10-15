import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:http/http.dart' as http;

void main() {
  test('Verificar se o retorno da api getCategories', () async {
    await Api(httpInstance: http.Client()).getCategories();
  });
  test('Verificar se o retorno da api getMoviesByCategorie', () async {
    await Api(httpInstance: http.Client()).getMoviesByCategories(27);
  });
}
