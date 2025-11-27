//todo interface
import 'package:stylish/domain/entities/response/products/products_response.dart';

abstract class ProductsRemoteDataSource{
  Future<ProductsResponse> getAllProducts();
}