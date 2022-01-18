import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gifs/infrastructure/navigation/navigation.dart';
import 'package:gifs/initializer.dart';

import 'infrastructure/navigation/routes.dart';

Future<void> main() async {
  await Initializer.init();
  final initialRoute = await Routes.initialRoute;

  runApp(
    GetMaterialApp(
      title: 'Buscador de GIFS',
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: ThemeData(
        hintColor: Colors.white,
        primaryColor: Colors.black,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
