import 'package:get/get.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/MovieDetails.dart';

class MoviesDetailController extends GetxController {
  final Repository repository;
  MoviesDetailController({required this.repository})
      : assert(repository != null);
  var arg = [].obs;
  RxInt movieId = 0.obs;

  var _movieDetails;
  set movieDetails(value) => this._movieDetails = value;
  get movieDetails => this._movieDetails;

  @override
  void onInit() async {
    arg.value = Get.arguments;
    super.onInit();
  }

  getMovieDetails() async {
    movieId.value = int.parse(arg[0]);
    movieDetails = await repository.getMovieDetail(movieId.value);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
