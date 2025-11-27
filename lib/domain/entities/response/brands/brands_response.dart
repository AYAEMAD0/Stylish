import 'data_brands.dart';
import 'metadata_brands.dart';

class BrandsResponse {
  final int? results;
  final MetadataBrands? metadata;
  final List<DataBrands>? data;

  BrandsResponse ({
    this.results,
    this.metadata,
    this.data,
  });

}


