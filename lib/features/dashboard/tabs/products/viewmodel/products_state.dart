part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}
final class ProductsLoading extends ProductsState {}
final class ProductsSuccess extends ProductsState {
  final ProductsResponse productsResponse;
  ProductsSuccess({required this.productsResponse});
}
final class ProductsError extends ProductsState {
  final String errorMessage;
  ProductsError({required this.errorMessage});
}
