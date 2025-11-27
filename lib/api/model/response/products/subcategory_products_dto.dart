import 'package:json_annotation/json_annotation.dart';
part 'subcategory_products_dto.g.dart';
@JsonSerializable()
class SubcategoryProductsDto {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "category")
  final String? category;

  SubcategoryProductsDto ({
    this.id,
    this.name,
    this.slug,
    this.category,
  });

  factory SubcategoryProductsDto.fromJson(Map<String, dynamic> json) {
    return _$SubcategoryProductsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SubcategoryProductsDtoToJson(this);
  }
}