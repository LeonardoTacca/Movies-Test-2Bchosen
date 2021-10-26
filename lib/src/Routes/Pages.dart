import 'package:get/get.dart';
import 'package:moviestest/src/Routes/routes.dart';

import 'package:moviestest/src/view/Home_Page.dart';
import 'package:moviestest/src/view/MovieDetails_Page.dart';

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
    )
  ];
}
