// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseDto _$CategoriesResponseDtoFromJson(
  Map<String, dynamic> json,
) => CategoriesResponseDto(
  results: (json['results'] as num?)?.toInt(),
  metadata: json['metadata'] == null
      ? null
      : MetadataCategoriesDto.fromJson(
          json['metadata'] as Map<String, dynamic>,
        ),
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DataCategoriesDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoriesResponseDtoToJson(
  CategoriesResponseDto instance,
) => <String, dynamic>{
  'results': instance.results,
  'metadata': instance.metadata,
  'data': instance.data,
};
