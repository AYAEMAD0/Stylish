// TODO: CategoriesResponseDto--->CategoriesResponse
import 'package:stylish/api/mappers/categories/data_categories_mapper.dart';
import 'package:stylish/api/mappers/categories/metadata_categories_mapper.dart';
import 'package:stylish/api/model/response/categories/categories_response_dto.dart';
import 'package:stylish/domain/entities/response/categories/categories_response.dart';

extension CategoriesResponseMapper on CategoriesResponseDto{
  CategoriesResponse toCategoriesResponse(){
    return CategoriesResponse(
      results: results,
      metadata: metadata!.toMetadataCategories(),
      data: data!.map((e) => e.toDataCategories(),).toList(),
    );
  }
}