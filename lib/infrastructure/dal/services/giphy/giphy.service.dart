import 'package:gifs/domain/core/abstractions/http_connect.interface.dart';
import 'package:gifs/domain/core/exceptions/default.exception.dart';
import 'package:gifs/infrastructure/dal/services/data/gif.data.dart';
import 'package:gifs/infrastructure/dal/services/giphy/dto/get_gifs.response.dart';

class GiphyService {
  final IHttpConnect _connect;
  const GiphyService(IHttpConnect connect) : _connect = connect;

  Future<List<GifData>> getGifs(
      {required String search, required int offset}) async {
    final response = await _connect.get(
      search == ''
          ? 'trending?api_key=PKDrXrHMQfYung62wJIsYhibYdl4PmMU&limit=20&rating=g'
          : 'search?api_key=PKDrXrHMQfYung62wJIsYhibYdl4PmMU&q=$search&limit=19&offset=$offset&rating=g&lang=pt',
      decoder: (value) => GetGifsResponse.fromJson(
        value as Map<String, dynamic>,
      ),
    );

    if (response.success) {
      return response.payload!.data!;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Falha ao pegar gifs');
      }
    }
  }
}
