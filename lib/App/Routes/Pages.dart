import 'package:get/get.dart';
import 'package:moviestest/App/Routes/Routes.dart';
import 'package:moviestest/App/ui/Android/Home/Home_Page.dart';
import 'package:moviestest/App/ui/Android/MovieDetails/MovieDetails_Page.dart';

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
