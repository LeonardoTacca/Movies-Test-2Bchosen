import 'package:get/get.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/SimilarMoviesDetails.dart';
import 'package:http/http.dart' as http;

class MoviesDetailController extends GetxController {
  final Repository repository;
  MoviesDetailController({required this.repository})
      : assert(repository != null);

  RxInt movieId = 0.obs;
  List moviedetails = [].obs;
  @override
  void onInit() async {
    super.onInit();
  }

  updateMoviesdetails(id, MoviesDetailController controller) async {
    controller.getMovieDetails();

    controller.moviedetails = [];
    controller.movieId.value = id;

    Get.toNamed('/MovieDetails');
  }

  getMovieDetails() async {
    moviedetails = await repository.getMovieDetail(movieId.value);
  }

  var _similarMovies = <SimilarMoviesDetails>[].obs;
  set similiarMoviesList(value) => this._similarMovies.value = value;
  get similiarMoviesList => this._similarMovies.value;

  getSimilarMovies() {
    repository.getSimilarMovies(movieId.value).then((data) {
      this.similiarMoviesList = data;
    });
  }

  @override
  void onClose() {
    Get.delete<MoviesDetailController>();
    super.onClose();
  }
}
