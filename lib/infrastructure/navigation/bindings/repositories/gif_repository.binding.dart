import 'package:get/get.dart';
import 'package:gifs/domain/repositories/gif.repository.dart';
import 'package:gifs/infrastructure/dal/services/connect.dart';
import 'package:gifs/infrastructure/dal/services/giphy/giphy.service.dart';

class GifRepositoryBinding {
  late GifRepository _gifRepository;
  GifRepository get repository => _gifRepository;

  GifRepositoryBinding() {
    final getConnect = Get.find<GetConnect>();
    final connect = Connect(connect: getConnect);
    final giphyService = GiphyService(connect);
    _gifRepository = GifRepository(service: giphyService);
  }
}
