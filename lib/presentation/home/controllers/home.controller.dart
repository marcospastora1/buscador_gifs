import 'package:get/get.dart';
import 'package:gifs/domain/repositories/gif.repository.dart';
import 'package:gifs/domain/repositories/models/gif.model.dart';

class HomeController extends GetxController {
  late final GifRepository _gifRepository;
  HomeController({required GifRepository gifRepository})
      : _gifRepository = gifRepository;

  final gifs = <GifModel>[].obs;
  final search = ''.obs;
  final offset = 0.obs;
  final load = true.obs;
  final statusError = false.obs;

  @override
  void onReady() {
    loadGifs();
    ever(search, (_)=> loadGifs());
    ever(offset, (_)=> loadGifs());
  }

  Future<void> loadGifs() async {
    try {
      final response = await _gifRepository.getGifs(search: search.value, offset: offset.value);
      gifs.assignAll(response);
    } catch (err) {
      statusError.value = true;
    } finally {
      load.value = false;
    }
  }
}
