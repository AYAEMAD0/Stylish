import 'package:stylish/api/model/response/categories/metadata_categories_dto.dart';
import 'package:stylish/domain/entities/response/categories/metadata_categories.dart';

extension MetadataCategoriesMapper on MetadataCategoriesDto {
  MetadataCategories toMetadataCategories() {
    return MetadataCategories(
      numberOfPages: numberOfPages,
      limit: limit,
      currentPage: currentPage,
    );
  }
}
