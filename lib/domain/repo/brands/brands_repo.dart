//todo interface for brands repo
import 'package:stylish/domain/entities/response/brands/brands_response.dart';

abstract class BrandsRepo{
  Future<BrandsResponse>getAllBrands();
}