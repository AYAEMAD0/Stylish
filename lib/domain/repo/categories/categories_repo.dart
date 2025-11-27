//todo interface for categories repo
import 'package:stylish/domain/entities/response/categories/categories_response.dart';

abstract class CategoriesRepo{
  Future<CategoriesResponse>getAllCategories();
}