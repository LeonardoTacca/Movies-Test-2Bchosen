import 'package:moviestest/src/Provider/Api_Provider.dart';

class Repository {
  final Api apiClient;

  // ignore: unnecessary_null_comparison
  Repository({required this.apiClient}) : assert(apiClient != null);
  getCategories() {
    return apiClient.getCategories();
  }

  getMoviesByCategories(categoryID, pageNumber) {
    return apiClient.getMoviesByCategories(categoryID, pageNumber);
  }

  getMovieDetail(movieId) {
    return apiClient.getMovieDetails(movieId);
  }

  getSimilarMovies(movieId) {
    return apiClient.getSimilarMovies(movieId);
  }
}
