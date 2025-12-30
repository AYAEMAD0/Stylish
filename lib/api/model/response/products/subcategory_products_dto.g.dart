// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubcategoryProductsDto _$SubcategoryProductsDtoFromJson(
  Map<String, dynamic> json,
) => SubcategoryProductsDto(
  id: json['_id'] as String?,
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  category: json['category'] as String?,
);

Map<String, dynamic> _$SubcategoryProductsDtoToJson(
  SubcategoryProductsDto instance,
) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'category': instance.category,
};
