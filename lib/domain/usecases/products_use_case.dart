import 'package:injectable/injectable.dart';
import 'package:stylish/domain/entities/response/products/products_response.dart';
import 'package:stylish/domain/repo/products/products_repo.dart';

@injectable
class ProductsUseCase {
  ProductsRepo productsRepo;
  ProductsUseCase({required this.productsRepo});

  Future<ProductsResponse>call(){
    return productsRepo.getAllProducts();
  }

}