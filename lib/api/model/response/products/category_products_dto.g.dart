// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryProductsDto _$CategoryProductsDtoFromJson(Map<String, dynamic> json) =>
    CategoryProductsDto(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryProductsDtoToJson(
  CategoryProductsDto instance,
) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'image': instance.image,
};
