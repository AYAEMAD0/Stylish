import 'package:json_annotation/json_annotation.dart';
part 'category_products_dto.g.dart';
@JsonSerializable()
class CategoryProductsDto {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  CategoryProductsDto ({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  factory CategoryProductsDto.fromJson(Map<String, dynamic> json) {
    return _$CategoryProductsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryProductsDtoToJson(this);
  }
}