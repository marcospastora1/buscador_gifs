import 'package:gifs/domain/repositories/models/gif.model.dart';
import 'package:gifs/infrastructure/dal/services/giphy/giphy.service.dart';

class GifRepository {
  final GiphyService _service;
  const GifRepository({required GiphyService service}) : _service = service;

  Future<List<GifModel>> getGifs({required String search, required int offset}) async {
    try {
      final response = await _service.getGifs(search: search, offset: offset);
      final models = response.map((e) => GifModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
