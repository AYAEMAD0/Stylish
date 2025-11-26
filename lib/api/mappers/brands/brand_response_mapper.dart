// TODO: BrandsResponseDto-->BrandsResponse
import 'package:stylish/api/mappers/brands/data_brands_mapper.dart';
import 'package:stylish/api/mappers/brands/metadata_brands_mapper.dart';
import 'package:stylish/api/model/response/brands/brands_response_dto.dart';
import 'package:stylish/domain/entities/response/brands/brands_response.dart';

extension BrandResponseMapper on BrandsResponseDto{
  BrandsResponse toBrandResponse(){
    return BrandsResponse(
      data: data!.map((e) => e.toDataBrands(),).toList(),
      metadata: metadata!.toMetadataBrands(),
      results: results
    );
  }
}