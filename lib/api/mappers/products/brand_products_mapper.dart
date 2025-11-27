import 'package:stylish/api/model/response/products/brand_products_dto.dart';
import '../../../domain/entities/response/products/brand_products.dart';

extension BrandProductsMapper on BrandProductsDto {
  BrandProducts toBrandProducts() {
    return BrandProducts(slug: slug, id: id, image: image, name: name);
  }
}
