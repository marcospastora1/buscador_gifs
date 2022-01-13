import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/binding.dart';
import 'package:gifs/gif_page.dart';
import 'package:gifs/home.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Buscador de GIFS',
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => const HomePage(), binding: HomeBinding()),
      GetPage(name: '/gifPage', page: ()=> const GifPage()),
    ],
    theme: ThemeData(
      hintColor: Colors.white,
      primaryColor: Colors.black,
      inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
    ),
  ));
}
