import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/model/Genres_Model.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final Repository repository;
  HomeController({required this.repository}) : assert(repository != null);

  var _genresList = <GenresModel>[].obs;
  set genreList(value) => this._genresList.value = value;
  get genreList => this._genresList.value;

  getAllCategories() {
    repository.getCategories().then((data) {
      this.genreList = data;
    });
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
