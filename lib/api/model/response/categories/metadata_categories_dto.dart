import 'package:json_annotation/json_annotation.dart';

part 'metadata_categories_dto.g.dart';
@JsonSerializable()
class MetadataCategoriesDto {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;

  MetadataCategoriesDto ({
    this.currentPage,
    this.numberOfPages,
    this.limit,
  });

  factory MetadataCategoriesDto.fromJson(Map<String, dynamic> json) {
    return _$MetadataCategoriesDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetadataCategoriesDtoToJson(this);
  }
}
