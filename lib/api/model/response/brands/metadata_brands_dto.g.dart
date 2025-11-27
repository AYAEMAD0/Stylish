// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_brands_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataBrandsDto _$MetadataBrandsDtoFromJson(Map<String, dynamic> json) =>
    MetadataBrandsDto(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      nextPage: (json['nextPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetadataBrandsDtoToJson(MetadataBrandsDto instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'numberOfPages': instance.numberOfPages,
      'limit': instance.limit,
      'nextPage': instance.nextPage,
    };
