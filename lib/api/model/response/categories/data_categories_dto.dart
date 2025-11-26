import 'package:json_annotation/json_annotation.dart';
part 'data_categories_dto.g.dart';
@JsonSerializable()
class DataCategoriesDto {
  @JsonKey(name: "_id")
  final String? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "updatedAt")
  final String? updatedAt;

  DataCategoriesDto ({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory DataCategoriesDto.fromJson(Map<String, dynamic> json) {
    return _$DataCategoriesDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataCategoriesDtoToJson(this);
  }
}
