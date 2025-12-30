import 'package:injectable/injectable.dart';
import 'package:stylish/data/data_source/remote/products/products_remote_data_source.dart';
import 'package:stylish/domain/entities/response/products/products_response.dart';
import 'package:stylish/domain/repo/products/products_repo.dart';

@Injectable(as: ProductsRepo)
class ProductsRepoImpl implements ProductsRepo {
  ProductsRemoteDataSource productsRemoteDataSource;
  ProductsRepoImpl({required this.productsRemoteDataSource});
  @override
  Future<ProductsResponse> getAllProducts() {
    return productsRemoteDataSource.getAllProducts();
  }
}
