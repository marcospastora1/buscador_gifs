import 'package:gifs/infrastructure/dal/services/data/gif.data.dart';

class GifModel {
  final String url;
  const GifModel({required this.url});

  factory GifModel.fromData(GifData data) {
    return GifModel(url: data.image.original.url);
  }
}
