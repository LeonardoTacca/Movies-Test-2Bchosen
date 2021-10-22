import 'package:get/get.dart';
import 'package:moviestest/src/Routes/routes.dart';
import 'package:moviestest/src/bindings/MoviesDetails_Bindings.dart';
import 'package:moviestest/src/view/Home_Page.dart';
import 'package:moviestest/src/view/MovieDetails_Page.dart';
import '../bindings/MoviesDetails_Bindings.dart';

class Pages {
  static const initialRoute = Routes.HOME;
  static final routeList = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.MOVIEDETAIL,
        page: () => MovieDetails(),
        binding: MoviesDetailsBinding())
  ];
}
