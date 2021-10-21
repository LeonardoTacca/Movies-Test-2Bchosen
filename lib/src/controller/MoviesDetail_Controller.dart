import 'package:get/get.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/MovieDetails.dart';

class MoviesDetailController extends GetxController {
  final Repository repository;
  MoviesDetailController({required this.repository})
      : assert(repository != null);

  RxInt movieId = 0.obs;

  var _movieDetails = <MovieDetails>[].obs;
  set movieDetails(value) => this._movieDetails.value = value;
  get movieDetails => this._movieDetails.value;

  getMovieDetails(int movieId) async {
    movieDetails = await repository.getMovieDetail(movieId);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
