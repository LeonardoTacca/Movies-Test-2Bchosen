import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/Routes/Pages.dart';
import 'package:moviestest/src/bindings/Home_Bindings.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Super-Movies',
    initialBinding: HomeBinding(),
    debugShowCheckedModeBanner: false,
    getPages: Pages.routeList,
  ));
}
