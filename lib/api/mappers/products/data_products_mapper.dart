import 'package:stylish/api/mappers/products/brand_products_mapper.dart';
import 'package:stylish/api/mappers/products/category_products_mappper.dart';
import 'package:stylish/api/mappers/products/subcategory_products_mapper.dart';
import 'package:stylish/api/model/response/products/data_products_dto.dart';
import '../../../domain/entities/response/products/data_products.dart';

extension DataProductsMapper on DataProductsDto {
  DataProducts toDataProducts() {
    return DataProducts(
      createdAt: createdAt,
      id: id,
      slug: slug,
      updatedAt: updatedAt,
      title: title,
      price: price,
      brand: brand?.toBrandProducts(),
      category: category?.toCategoryProducts(),
      description: description,
      imageCover: imageCover,
      images: images,
      quantity: quantity,
      ratingsAverage: ratingsAverage,
      ratingsQuantity: ratingsQuantity,
      sold: sold,
      subcategory:
          subcategory?.map((e) => e.toSubcategoryProducts()).toList() ?? [],
    );
  }
}
