// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_gifs.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGifsResponse _$GetGifsResponseFromJson(Map<String, dynamic> json) =>
    GetGifsResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GifData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetGifsResponseToJson(GetGifsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
