import '../../../domain/entities/response/products/category_products.dart';
import '../../model/response/products/category_products_dto.dart';

extension CategoryProductsMappper on CategoryProductsDto {
  CategoryProducts toCategoryProducts() {
    return CategoryProducts(
      slug: slug,
      id: id,
      image: image,
      name: name
    );
  }
}
