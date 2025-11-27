import 'package:stylish/api/model/response/products/metadata_products_dto.dart';
import '../../../domain/entities/response/products/metadata_products.dart';

extension MetadataProductsMapper on MetadataProductsDto {
  MetadataProducts toMetadataProducts() {
    return MetadataProducts(
      currentPage: currentPage,
      limit: limit,
      numberOfPages: numberOfPages,
      nextPage: nextPage,
    );
  }
}
