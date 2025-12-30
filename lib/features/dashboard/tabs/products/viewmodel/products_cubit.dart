import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/core/exceptions/app_exception.dart';
import 'package:stylish/domain/entities/response/products/products_response.dart';
import 'package:stylish/domain/usecases/products_use_case.dart';

part 'products_state.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  ProductsUseCase productsUseCase;
  ProductsCubit({required this.productsUseCase}) : super(ProductsInitial());
  TextEditingController searchController = TextEditingController();

  void getAllProducts() async {
    try {
      emit(ProductsLoading());
      var response = await productsUseCase.call();
      emit(ProductsSuccess(productsResponse: response));
    } on AppException catch (e) {
      emit(ProductsError(errorMessage: e.toString()));
    } on DioException catch (e) {
      var message = (e.error is AppException)
          ? (e.error as AppException).message
          : "UnExpected occurred";
      emit(ProductsError(errorMessage: message));
    }
  }
}
