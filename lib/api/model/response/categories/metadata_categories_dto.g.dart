// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataCategoriesDto _$MetadataCategoriesDtoFromJson(
  Map<String, dynamic> json,
) => MetadataCategoriesDto(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  numberOfPages: (json['numberOfPages'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetadataCategoriesDtoToJson(
  MetadataCategoriesDto instance,
) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'numberOfPages': instance.numberOfPages,
  'limit': instance.limit,
};
