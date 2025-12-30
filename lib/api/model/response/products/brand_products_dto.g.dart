// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandProductsDto _$BrandProductsDtoFromJson(Map<String, dynamic> json) =>
    BrandProductsDto(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$BrandProductsDtoToJson(BrandProductsDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };
