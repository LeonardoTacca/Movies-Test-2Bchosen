import 'package:moviestest/src/Provider/Api_Provider.dart';

class Repository {
  final Api apiClient;

  // ignore: unnecessary_null_comparison
  Repository({required this.apiClient}) : assert(apiClient != null);
  getCategories() {
    return apiClient.getCategories();
  }

  getMovieDetails(movieId) {
    return apiClient.getMovieDetails(movieId);
  }

  getMoviesByCategorie(categoryID) {
    return apiClient.getMoviesByCategorie(categoryID)();
  }
}
