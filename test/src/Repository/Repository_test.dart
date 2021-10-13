import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Repository/Repository.dart';

void main() {
  test('Verificar se o retorno das apis existe', () async {
    Repository tests = Repository();
    // await tests.getCategories();
    // await tests.getMoviesByCategorie(27);
    await tests.getMovieDetails(63036);
  });
}
