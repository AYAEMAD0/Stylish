import 'package:stylish/domain/entities/response/products/brand_products.dart';
import 'package:stylish/domain/entities/response/products/category_products.dart';
import 'package:stylish/domain/entities/response/products/subcategory_products.dart';

class DataProducts {
  final int? sold;
  final List<String>? images;
  final List<SubcategoryProducts>? subcategory;
  final int? ratingsQuantity;
  final String? id;
  final String? title;
  final String? slug;
  final String? description;
  final int? quantity;
  final int? price;
  final String? imageCover;
  final CategoryProducts? category;
  final BrandProducts? brand;
  final double? ratingsAverage;
  final String? createdAt;
  final String? updatedAt;

  DataProducts ({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
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
    this.id,
  });

}