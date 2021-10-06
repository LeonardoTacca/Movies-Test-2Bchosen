import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviestest/src/Routes/Pages.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Super-Movies',
    debugShowCheckedModeBanner: false,
    getPages: Pages.routeList,
  ));
}
