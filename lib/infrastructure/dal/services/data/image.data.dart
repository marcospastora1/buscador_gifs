import 'package:gifs/infrastructure/dal/services/data/original_image.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.data.g.dart';

@JsonSerializable()
class ImageData {
  final OriginalImageData original;
  const ImageData({required this.original});

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}
