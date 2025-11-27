//todo interface for products repo

import 'package:stylish/domain/entities/response/products/products_response.dart';

abstract class ProductsRepo{
  Future<ProductsResponse>getAllProducts();
}