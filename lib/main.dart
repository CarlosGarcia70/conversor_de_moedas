import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_bindings.dart';
import 'home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
      title: 'Conversor de moedas com GetX',
      initialRoute: '/',
      theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        backgroundColor: Colors.black
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomeBinding())
      ]
  ));
}