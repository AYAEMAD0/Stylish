import 'package:injectable/injectable.dart';
import 'package:stylish/data/data_source/remote/brands/brands_remote_data_source.dart';
import 'package:stylish/domain/entities/response/brands/brands_response.dart';
import 'package:stylish/domain/repo/brands/brands_repo.dart';

@Injectable(as: BrandsRepo)
class BrandsRepoImpl implements BrandsRepo {
  BrandsRemoteDataSource brandsRemoteDataSource;
  BrandsRepoImpl({required this.brandsRemoteDataSource});
  @override
  Future<BrandsResponse> getAllBrands() {
    // TODO: implement getAllBrands
    return brandsRemoteDataSource.getAllBrands();
  }
}
