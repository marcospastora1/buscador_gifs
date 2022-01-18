import 'package:json_annotation/json_annotation.dart';

part 'original_image.data.g.dart';

@JsonSerializable()
class OriginalImageData {
  final String url;
  const OriginalImageData({required this.url});

  factory OriginalImageData.fromJson(Map<String, dynamic> json) =>
      _$OriginalImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$OriginalImageDataToJson(this);
}
