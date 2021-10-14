// ignore_for_file: unnecessary_statements

import 'package:get/get.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/controller/Home_Controller.dart';
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
