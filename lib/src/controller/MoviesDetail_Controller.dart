import 'package:get/get.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/CategoryMovieDetails.dart';
import 'package:moviestest/src/model/SimilarMoviesDetails.dart';

class MoviesDetailController extends GetxController {
  final Repository repository;
  MoviesDetailController({required this.repository})
      : assert(repository != null);
  var arg = [].obs;
  RxInt movieId = 0.obs;
  RxString movieTitle = ''.obs;
  RxString overview = ''.obs;
  RxString posterPath = ''.obs;
  RxString backdropPath = ''.obs;
  var _movieDetails;
  set movieDetails(value) => this._movieDetails = value;
  get movieDetails => this._movieDetails;

  @override
  void onInit() async {
    arg.value = Get.arguments;
    movieTitle.value = arg[1];
    overview.value = arg[2];
    posterPath.value = arg[3];
    backdropPath.value = arg[4];
    super.onInit();
  }

  getMovieDetails() async {
    movieId.value = int.parse(arg[0]);
    movieDetails = await repository.getMovieDetail(movieId.value);
  }

  var _similarMovies = <SimilarMoviesDetails>[].obs;
  set similiarMoviesList(value) => this._similarMovies.value = value;
  get similiarMoviesList => this._similarMovies.value;
  getSimilarMovies() {
    movieId.value = int.parse(arg[0]);
    repository.getSimilarMovies(movieId.value).then((data) {
      this.similiarMoviesList = data;
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
