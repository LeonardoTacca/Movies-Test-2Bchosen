import 'package:get/get.dart';
import 'package:moviestest/src/Provider/Api_Provider.dart';
import 'package:moviestest/src/Repository/Repository.dart';
import 'package:moviestest/src/controller/MoviesDetail_Controller.dart';
import 'package:http/http.dart' as http;

class MoviesDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoviesDetailController>(() {
      return MoviesDetailController(
          repository: Repository(apiClient: Api(httpInstance: http.Client())));
    });
  }
}
