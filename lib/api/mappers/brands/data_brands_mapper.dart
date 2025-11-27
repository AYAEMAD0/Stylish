import 'package:stylish/api/model/response/brands/data_brands_dto.dart';
import '../../../domain/entities/response/brands/data_brands.dart';

extension DataBrandsMapper on DataBrandsDto {
  DataBrands toDataBrands() {
    return DataBrands(
      image: image,
      name: name,
      createdAt: createdAt,
      id: id,
      slug: slug,
      updatedAt: updatedAt,
    );
  }
}
