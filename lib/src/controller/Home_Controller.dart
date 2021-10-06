import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var searchField = TextEditingController();
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
