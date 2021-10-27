import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/App/Routes/Pages.dart';
import 'package:moviestest/App/bindings/Home_Bindings.dart';


void main() {
  runApp(GetMaterialApp(
    title: 'Super-Movies',
    initialBinding: HomeBinding(),
    debugShowCheckedModeBanner: false,
    getPages: Pages.routeList,
  ));
}
