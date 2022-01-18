import 'package:gifs/infrastructure/dal/services/data/image.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gif.data.g.dart';

@JsonSerializable()
class GifData {
  @JsonKey(name: 'images')
  final ImageData image;

  const GifData({required this.image});

  factory GifData.fromJson(Map<String, dynamic> json) =>
      _$GifDataFromJson(json);

  Map<String, dynamic> toJson() => _$GifDataToJson(this);
}
