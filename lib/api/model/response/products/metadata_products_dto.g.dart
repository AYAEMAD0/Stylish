// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataProductsDto _$MetadataProductsDtoFromJson(Map<String, dynamic> json) =>
    MetadataProductsDto(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      nextPage: (json['nextPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MetadataProductsDtoToJson(
  MetadataProductsDto instance,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'numberOfPages': instance.numberOfPages,
  'limit': instance.limit,
  'nextPage': instance.nextPage,
};
