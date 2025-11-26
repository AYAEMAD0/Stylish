import 'package:injectable/injectable.dart';
import 'package:stylish/api/api_services.dart';
import 'package:stylish/api/mappers/categories/categories_response_mapper.dart';
import 'package:stylish/data/data_source/remote/categories/categories_remote_data_source.dart';
import 'package:stylish/domain/entities/response/categories/categories_response.dart';

@Injectable(as: CategoriesRemoteDataSource)
class CategoriesRemoteDataSourceImpl implements CategoriesRemoteDataSource {
  ApiServices apiServices;
  CategoriesRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<CategoriesResponse> getAllCategories() async {
    // TODO: CategoriesResponseDto--->CategoriesResponse
    var response = await apiServices.getAllCategories();
    return response.toCategoriesResponse();
  }
}
