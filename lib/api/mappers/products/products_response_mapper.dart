import 'package:stylish/api/mappers/products/data_products_mapper.dart';
import 'package:stylish/api/mappers/products/metadata_products_mapper.dart';
import 'package:stylish/api/model/response/products/products_response_dto.dart';
import 'package:stylish/domain/entities/response/products/products_response.dart';

extension ProductsResponseMapper on ProductsResponseDto{
  ProductsResponse toProductsResponse(){
    return ProductsResponse(
      data: data?.map((e) => e.toDataProducts(),).toList()??[],
      metadata: metadata?.toMetadataProducts(),
      results: results
    );
  }
}