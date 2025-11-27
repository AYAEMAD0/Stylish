import 'package:stylish/api/model/response/products/subcategory_products_dto.dart';
import 'package:stylish/domain/entities/response/products/subcategory_products.dart';

extension SubcategoryProductsMapper on SubcategoryProductsDto {
  SubcategoryProducts toSubcategoryProducts() {
    return SubcategoryProducts(
      slug: slug,
      id: id,
      name: name,
      category: category,
    );
  }
}
