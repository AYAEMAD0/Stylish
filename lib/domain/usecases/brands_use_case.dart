import 'package:injectable/injectable.dart';
import 'package:stylish/domain/entities/response/brands/brands_response.dart';
import 'package:stylish/domain/repo/brands/brands_repo.dart';

@injectable
class BrandsUseCase {
  BrandsRepo brandsRepo;
  BrandsUseCase({required this.brandsRepo});
  Future<BrandsResponse> call() {
    return brandsRepo.getAllBrands();
  }
}
