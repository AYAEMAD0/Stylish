import 'package:json_annotation/json_annotation.dart';

import 'data_categories_dto.dart';
import 'metadata_categories_dto.dart';

part 'categories_response_dto.g.dart';

@JsonSerializable()
class CategoriesResponseDto {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final MetadataCategoriesDto? metadata;
  @JsonKey(name: "data")
  final List<DataCategoriesDto>? data;

  CategoriesResponseDto ({
    this.results,
    this.metadata,
    this.data,
  });

  factory CategoriesResponseDto.fromJson(Map<String, dynamic> json) {
    return _$CategoriesResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoriesResponseDtoToJson(this);
  }
}



