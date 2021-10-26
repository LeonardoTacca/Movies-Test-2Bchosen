import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/controller/MoviesDetail_Controller.dart';
import 'package:moviestest/src/model/Genres_Model.dart';
import 'package:moviestest/src/model/Movies_Model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);
  RxInt movieId = 0.obs;
  RxInt pageNumber = 1.obs;
  ScrollController scrollController = ScrollController();
  RxBool categorySelected = false.obs;
  var _genresList = <GenresModel>[].obs;
  set genreList(value) => this._genresList.value = value;
  get genreList => this._genresList.value;
  getAllCategories() {
    repository.getCategories().then((data) {
      this.genreList = data;
    });
  }

  getPopularMovies() {
    categorySelected.value = false;
    repository.getPopularMovies().then((data) {
      this.moviesList = data;
    });
  }

  var _moviesList = <MoviesList>[].obs;
  set moviesList(value) => this._moviesList.value = value;
  get moviesList => this._moviesList.value;

  getMoviesByCategories(int id, int pageNumber) async {
    categorySelected.value = true;
    moviesList = <MoviesList>[];
    moviesList = await repository.getMoviesByCategories(id, pageNumber);
  }

  getmovieDetailsandNavigate(int id) async {
    final MoviesDetailController detailsController = Get.put(
        MoviesDetailController(
            repository:
                Repository(apiClient: Api(httpInstance: http.Client()))));
    detailsController.movieId.value = id;
    await detailsController.getMovieDetails();
    Get.toNamed('/MovieDetails');
  }

  TextEditingController searchField = TextEditingController();
  @override
  void onInit() {
    searchField.text = '';
    getPopularMovies();

    scrollController
      ..addListener(() async {
        if (categorySelected.value == true) {
          if (scrollController.offset >=
                  scrollController.position.maxScrollExtent &&
              !scrollController.position.outOfRange) {
            moviesList = await repository.getMoviesByCategories(
                movieId.value, ++pageNumber.value);
            scrollController.animateTo(5,
                duration: Duration(milliseconds: 1000), curve: Curves.ease);
          }
        }
        if (categorySelected.value == true) {
          if (pageNumber.value >= 2 &&
              scrollController.offset <=
                  scrollController.position.minScrollExtent &&
              !scrollController.position.outOfRange) {
            moviesList = await repository.getMoviesByCategories(
                movieId.value, --pageNumber.value);
            scrollController.animateTo(
                scrollController.position.maxScrollExtent - 10,
                duration: Duration(milliseconds: 1000),
                curve: Curves.ease);
          }
        }
      });

    super.onInit();
  }

  @override
  void onClose() {
    searchField.dispose();
    scrollController.dispose();
    super.onClose();
  }
}
