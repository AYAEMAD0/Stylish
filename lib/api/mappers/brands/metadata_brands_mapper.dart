import 'package:stylish/api/model/response/brands/metadata_brands_dto.dart';
import 'package:stylish/domain/entities/response/brands/metadata_brands.dart';

extension MetadataBrandsMapper on MetadataBrandsDto {
  MetadataBrands toMetadataBrands() {
    return MetadataBrands(
    currentPage: currentPage,
      limit: limit,
      nextPage: nextPage,
      numberOfPages: numberOfPages,
    );
  }
}
