import 'package:stylish/domain/entities/response/products/data_products.dart';
import 'package:stylish/domain/entities/response/products/metadata_products.dart';

class ProductsResponse{
  final int? results;
  final MetadataProducts? metadata;
  final List<DataProducts>? data;

  ProductsResponse ({
    this.results,
    this.metadata,
    this.data,
  });
}










