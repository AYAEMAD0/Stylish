import 'package:json_annotation/json_annotation.dart';
part 'data_brands_dto.g.dart';
@JsonSerializable()
class DataBrandsDto {
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

  DataBrandsDto ({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  factory DataBrandsDto.fromJson(Map<String, dynamic> json) {
    return _$DataBrandsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataBrandsDtoToJson(this);
  }
}
