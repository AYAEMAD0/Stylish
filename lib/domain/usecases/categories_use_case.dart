import 'package:injectable/injectable.dart';
import 'package:stylish/domain/repo/categories/categories_repo.dart';
import '../entities/response/categories/categories_response.dart';

@injectable
class CategoriesUseCase {
  CategoriesRepo categoriesRepo;
  CategoriesUseCase({required this.categoriesRepo});
  Future<CategoriesResponse> call() {
    return categoriesRepo.getAllCategories();
  }
}
