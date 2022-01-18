import 'package:get/get.dart';
import 'package:gifs/infrastructure/navigation/bindings/controllers/gif_controller.binding.dart';
import 'package:gifs/presentation/gif_page/gif.screen.dart';
import 'package:gifs/presentation/home/home.screen.dart';

import 'bindings/controllers/home_controller.binding.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.gifpage, 
      page: () => GifPage(),
      binding: GifControllerBinding(),
    )
  ];
}
