import 'package:json_annotation/json_annotation.dart';
part 'brand_products_dto.g.dart';
@JsonSerializable()
class BrandProductsDto {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  BrandProductsDto ({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  factory BrandProductsDto.fromJson(Map<String, dynamic> json) {
    return _$BrandProductsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandProductsDtoToJson(this);
  }
}