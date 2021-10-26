// ignore_for_file: unnecessary_statements

import 'package:get/get.dart';
import 'package:moviestest/App/Data/Provider/Api_Provider.dart';
import 'package:moviestest/App/Data/Repository/Repository.dart';

import 'package:moviestest/App/controller/Home_Controller.dart';
import 'package:http/http.dart' as http;

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository: Repository(apiClient: Api(httpInstance: http.Client())));
    });
  }
}
