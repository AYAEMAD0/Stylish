import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/core/exceptions/app_exception.dart';
import 'package:stylish/domain/entities/response/brands/brands_response.dart';
import 'package:stylish/domain/entities/response/categories/categories_response.dart';
import 'package:stylish/domain/usecases/brands_use_case.dart';
import 'package:stylish/domain/usecases/categories_use_case.dart';

import '../../../../../core/constants/app_assets.dart';
part 'home_state.dart';
@injectable
class HomeCubit extends Cubit<HomeState> {
  BrandsUseCase brandsUseCase;
  CategoriesUseCase categoriesUseCase;
  TextEditingController searchController = TextEditingController();
  List<String> banner = [
    AppAssets.banner1,
    AppAssets.banner2,
    AppAssets.banner3,
  ];
  HomeCubit({required this.categoriesUseCase,required this.brandsUseCase}):super(HomeInitial());
HomeSuccess successState=HomeSuccess();

  void getAllCategories()async{
    try{
      emit(HomeCategoriesLoading());
      var response=await categoriesUseCase.call();
      emit(successState=successState.copyWith(categoriesResponse: response,));
    }on AppException catch(e){
      emit(HomeCategoriesError(errorMessage: e.message));
    }on DioException catch(e){
      var message =(e.error is AppException)?
         (e.error as AppException).message
          : "UnExpected occurred";
      emit(HomeCategoriesError(errorMessage: message));
    }
  }

  void getAllBrands()async{
    try{
      emit(HomeBrandsLoading());
      var response=await brandsUseCase.call();
      emit(successState=successState.copyWith(brandsResponse: response));
    }on AppException catch(e){
      emit(HomeBrandsError(errorMessage: e.message));
    }on DioException catch(e){
      var message =(e.error is AppException)?
      (e.error as AppException).message
          : "UnExpected occurred";
      emit(HomeBrandsError(errorMessage: message));
    }
  }

}
