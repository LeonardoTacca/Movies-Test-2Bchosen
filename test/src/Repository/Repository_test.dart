import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Repository/Repository.dart';

void main() {
  test('Verificar se á algum retorno da Api', () async {
    Repository tests = Repository();
    await tests.getCategories();
  });
}
