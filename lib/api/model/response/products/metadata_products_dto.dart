import 'package:json_annotation/json_annotation.dart';

part 'metadata_products_dto.g.dart';
@JsonSerializable()
class MetadataProductsDto {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;
  @JsonKey(name: "nextPage")
  final int? nextPage;

  MetadataProductsDto ({
    this.currentPage,
    this.numberOfPages,
    this.limit,
    this.nextPage,
  });

  factory MetadataProductsDto.fromJson(Map<String, dynamic> json) {
    return _$MetadataProductsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetadataProductsDtoToJson(this);
  }
}
