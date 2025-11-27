//todo interface
import 'package:stylish/domain/entities/response/brands/brands_response.dart';

abstract class BrandsRemoteDataSource{
  Future<BrandsResponse> getAllBrands();
}