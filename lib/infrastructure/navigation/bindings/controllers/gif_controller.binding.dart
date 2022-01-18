import 'package:get/get.dart';
import 'package:gifs/presentation/gif_page/controllers/gif.controller.dart';

class GifControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GifController>(
      () => GifController(),
    );
  }
}
