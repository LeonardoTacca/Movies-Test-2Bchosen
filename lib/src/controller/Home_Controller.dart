import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/Genres_Model.dart';
import 'package:moviestest/src/model/Movies_Model.dart';

class HomeController extends GetxController {
  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);
  RxInt movieId = 0.obs;
  var _genresList = <GenresModel>[].obs;
  set genreList(value) => this._genresList.value = value;
  get genreList => this._genresList.value;
  getAllCategories() {
    repository.getCategories().then((data) {
      this.genreList = data;
    });
  }

  var _moviesList = <MoviesList>[].obs;
  set moviesList(value) => this._moviesList.value = value;
  get moviesList => this._moviesList.value;

  getMoviesByCategories(int id) async {
    moviesList = <MoviesList>[];
    moviesList = await repository.getMoviesByCategories(id);
  }

  TextEditingController searchField = TextEditingController();
  @override
  void onInit() {
    searchField.text = '';
    super.onInit();
  }

  @override
  void onClose() {
    searchField.dispose();
    super.onClose();
  }
}
