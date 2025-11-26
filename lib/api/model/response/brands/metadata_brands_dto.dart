import 'package:json_annotation/json_annotation.dart';

part 'metadata_brands_dto.g.dart';

@JsonSerializable()
class MetadataBrandsDto {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;
  @JsonKey(name: "nextPage")
  final int? nextPage;

  MetadataBrandsDto ({
    this.currentPage,
    this.numberOfPages,
    this.limit,
    this.nextPage,
  });

  factory MetadataBrandsDto.fromJson(Map<String, dynamic> json) {
    return _$MetadataBrandsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MetadataBrandsDtoToJson(this);
  }
}
