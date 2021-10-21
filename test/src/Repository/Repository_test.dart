import 'package:flutter_test/flutter_test.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:http/http.dart' as http;
import 'package:moviestest/src/Repository/Repository.dart';

void main() {
  final repository = Repository(apiClient: Api(httpInstance: http.Client()));

  test('Verificar se o retorno da api getCategories', () async {
    await repository.getCategories();
  });
  test('Verificar se o retorno da api getMoviesByCategories', () async {
    int category = 27;
    await Api(httpInstance: http.Client()).getMoviesByCategories(category, 1);
  });
  test('Verificar se o retorno da api getMovieDetails', () async {
    int movieId = 580489;
    await Api(httpInstance: http.Client()).getMovieDetails(movieId);
  });
}
{"adult": false, "backdrop_path": "/lNyLSOKMMeUPr1RsL4KcRuIXwHt.jpg", "budget": 110000000, "homepage": "https://www.venom.movie", "id": 580489, "imdb_id": "tt7097896", "original_language": "en", "original_title": "Venom: Let There Be Carnage", "overview": "O relacionamento entre Eddie e Venom (Tom Hardy) está evoluindo. Buscando a melhor forma de lidar com a inevitável simbiose, esse dois lados descobrem como viver juntos e, de alguma forma, se tornarem melhores juntos do que separados.", "popularity": 7339.989, 
"poster_path": "/kz7xJLowO4x0BpcB1IJb9uIXgrq.jpg", "release_date": "2021-09-30", "runtime": 97, "status": "Released", "tagline":"" , "title": "Venom: Tempo de Carnificina", "video": false, "vote_average": 7.1, "vote_count": 920}