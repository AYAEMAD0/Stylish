import 'package:injectable/injectable.dart';
import 'package:stylish/api/api_services.dart';
import 'package:stylish/api/mappers/products/products_response_mapper.dart';
import 'package:stylish/domain/entities/response/products/products_response.dart';

import '../../../../data/data_source/remote/products/products_remote_data_source.dart';

@Injectable(as: ProductsRemoteDataSource)
class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  ApiServices apiServices;
  ProductsRemoteDataSourceImpl({required this.apiServices});

  @override
  Future<ProductsResponse> getAllProducts()async {
    // TODO: ProductsResponseDto-->ProductsResponse
    var response = await apiServices.getAllProducts();
    return response.toProductsResponse();
  }
}
