part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeCategoriesLoading extends HomeState {}

final class HomeCategoriesError extends HomeState {
  final String errorMessage;
  HomeCategoriesError({required this.errorMessage});
}


final class HomeBrandsLoading extends HomeState {}

final class HomeBrandsError extends HomeState {
  final String errorMessage;
  HomeBrandsError({required this.errorMessage});
}


final class HomeSuccess extends HomeState {
  final BrandsResponse? brandsResponse;
  final CategoriesResponse? categoriesResponse;
  HomeSuccess({this.brandsResponse, this.categoriesResponse});
  HomeSuccess copyWith({
     BrandsResponse? brandsResponse,
     CategoriesResponse? categoriesResponse,
  }) {
    return HomeSuccess(
      categoriesResponse: categoriesResponse ?? this.categoriesResponse,
      brandsResponse: brandsResponse ?? this.brandsResponse,
    );
  }
}
