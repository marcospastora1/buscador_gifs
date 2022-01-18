import 'package:get/get.dart';
import 'package:gifs/infrastructure/navigation/bindings/repositories/gif_repository.binding.dart';
import 'package:gifs/presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    final gifRepositoryBinding = GifRepositoryBinding();

    Get.lazyPut<HomeController>(
      () => HomeController(gifRepository: gifRepositoryBinding.repository),
    );
  }
}
