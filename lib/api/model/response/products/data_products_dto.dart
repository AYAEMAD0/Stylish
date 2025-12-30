import 'package:json_annotation/json_annotation.dart';
import 'package:stylish/api/model/response/products/brand_products_dto.dart';
import 'package:stylish/api/model/response/products/category_products_dto.dart';
import 'package:stylish/api/model/response/products/subcategory_products_dto.dart';
part 'data_products_dto.g.dart';
@JsonSerializable()
class DataProductsDto {
  @JsonKey(name: "sold")
  final int? sold;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "subcategory")
  final List<SubcategoryProductsDto>? subcategory;
  @JsonKey(name: "ratingsQuantity")
  final int? ratingsQuantity;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "quantity")
  final int? quantity;
  @JsonKey(name: "price")
  final int? price;
  @JsonKey(name: "imageCover")
  final String? imageCover;
  @JsonKey(name: "category")
  final CategoryProductsDto? category;
  @JsonKey(name: "brand")
  final BrandProductsDto? brand;
  @JsonKey(name: "ratingsAverage")
  final double? ratingsAverage;
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @JsonKey(name: "id")
  final String? id;

  DataProductsDto ({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.id,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
  });

  factory DataProductsDto.fromJson(Map<String, dynamic> json) {
    return _$DataProductsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataProductsDtoToJson(this);
  }
}