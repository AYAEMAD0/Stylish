import 'package:stylish/api/model/response/categories/data_categories_dto.dart';
import 'package:stylish/domain/entities/response/categories/data_categories.dart';

extension DataCategoriesMapper on DataCategoriesDto{
  DataCategories toDataCategories(){
    return DataCategories(
      updatedAt: updatedAt,
      slug: slug,
      id: id,
      image: image,
      createdAt: createdAt,
      name: name
    );
}
}