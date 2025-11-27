import 'package:injectable/injectable.dart';
import 'package:stylish/api/api_services.dart';
import 'package:stylish/api/mappers/brands/brand_response_mapper.dart';
import 'package:stylish/data/data_source/remote/brands/brands_remote_data_source.dart';
import 'package:stylish/domain/entities/response/brands/brands_response.dart';

@Injectable(as: BrandsRemoteDataSource)
class BrandsRemoteDataSourceImpl implements BrandsRemoteDataSource {
  ApiServices apiServices;
  BrandsRemoteDataSourceImpl({required this.apiServices});

  @override
  Future<BrandsResponse> getAllBrands() async {
    // TODO: BrandsResponseDto-->BrandsResponse
    var response = await apiServices.getAllBrands();
    return response.toBrandResponse();
  }
}
