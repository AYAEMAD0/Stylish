import 'package:json_annotation/json_annotation.dart';
import 'package:stylish/api/model/response/products/data_products_dto.dart';
import 'package:stylish/api/model/response/products/metadata_products_dto.dart';
part 'products_response_dto.g.dart';

@JsonSerializable()
class ProductsResponseDto {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final MetadataProductsDto? metadata;
  @JsonKey(name: "data")
  final List<DataProductsDto>? data;

  ProductsResponseDto ({
    this.results,
    this.metadata,
    this.data,
  });

  factory ProductsResponseDto.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductsResponseDtoToJson(this);
  }
}










