import 'package:json_annotation/json_annotation.dart';

part 'title.data.g.dart';

@JsonSerializable()
class TitleData {
  @JsonKey(name: 'title')
  final String title;

  const TitleData({required this.title});

  factory TitleData.fromJson(Map<String, dynamic> json) => _$TitleDataFromJson(json);

  Map<String, dynamic> toJson() => _$TitleDataToJson(this);
}