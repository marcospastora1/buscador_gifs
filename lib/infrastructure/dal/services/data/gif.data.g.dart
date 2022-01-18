// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GifData _$GifDataFromJson(Map<String, dynamic> json) => GifData(
      image: ImageData.fromJson(json['images'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GifDataToJson(GifData instance) => <String, dynamic>{
      'images': instance.image,
    };
