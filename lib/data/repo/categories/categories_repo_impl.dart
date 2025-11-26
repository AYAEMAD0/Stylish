import 'package:injectable/injectable.dart';
import 'package:stylish/data/data_source/remote/categories/categories_remote_data_source.dart';
import 'package:stylish/domain/entities/response/categories/categories_response.dart';
import 'package:stylish/domain/repo/categories/categories_repo.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl implements CategoriesRepo {
  CategoriesRemoteDataSource categoriesRemoteDataSource;
  CategoriesRepoImpl({required this.categoriesRemoteDataSource});
  @override
  Future<CategoriesResponse> getAllCategories() {
    // TODO: implement getAllCategories
    return categoriesRemoteDataSource.getAllCategories();
  }
}
