import 'package:gifs/infrastructure/dal/services/data/gif.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_gifs.response.g.dart';

@JsonSerializable()
class GetGifsResponse {
  final List<GifData>? data;
  const GetGifsResponse({this.data});

  factory GetGifsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetGifsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetGifsResponseToJson(this);
}
