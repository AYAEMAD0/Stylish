//todo interface
import '../../../../domain/entities/response/categories/categories_response.dart';

abstract class CategoriesRemoteDataSource{
  Future<CategoriesResponse> getAllCategories();
}