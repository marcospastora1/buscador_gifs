import 'package:get/get.dart';
import 'package:gifs/controller.dart';

class HomeBinding extends Bindings {
  @override 
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}