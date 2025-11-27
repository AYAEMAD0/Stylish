import 'data_categories.dart';
import 'metadata_categories.dart';

class CategoriesResponse {
  final int? results;
  final MetadataCategories? metadata;
  final List<DataCategories>? data;

  CategoriesResponse ({
    this.results,
    this.metadata,
    this.data,
  });
}



