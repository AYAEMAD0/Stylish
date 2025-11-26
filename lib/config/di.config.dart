// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;

import '../api/api_services.dart' as _i124;
import '../api/data_source/remote/auth/auth_remote_data_source_impl.dart'
    as _i502;
import '../api/data_source/remote/brands/brands_remote_data_source_impl.dart'
    as _i406;
import '../api/data_source/remote/categories/categories_remote_data_source_impl.dart'
    as _i326;
import '../api/dio/dio_module.dart' as _i223;
import '../data/data_source/remote/auth/auth_remote_data_source.dart' as _i11;
import '../data/data_source/remote/brands/brands_remote_data_source.dart'
    as _i620;
import '../data/data_source/remote/categories/categories_remote_data_source.dart'
    as _i691;
import '../data/repo/auth/auth_repo_impl.dart' as _i602;
import '../data/repo/brands/brands_repo_impl.dart' as _i441;
import '../data/repo/categories/categories_repo_impl.dart' as _i1072;
import '../domain/repo/auth/auth_repo.dart' as _i171;
import '../domain/repo/brands/brands_repo.dart' as _i196;
import '../domain/repo/categories/categories_repo.dart' as _i975;
import '../domain/usecases/brands_use_case.dart' as _i386;
import '../domain/usecases/categories_use_case.dart' as _i174;
import '../domain/usecases/login_use_case.dart' as _i646;
import '../domain/usecases/register_use_case.dart' as _i744;
import '../features/auth/login/viewmodel/login_cubit.dart' as _i177;
import '../features/auth/register/viewmodel/register_cubit.dart' as _i735;
import '../features/auth/login/viewmodel/login_cubit.dart' as _i177;
import '../features/auth/register/viewmodel/register_cubit.dart' as _i735;
import '../features/dashboard/tabs/home/viewmodel/home_cubit.dart' as _i672;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.singleton<_i361.BaseOptions>(() => dioModule.provideBaseOption());
    gh.singleton<_i528.PrettyDioLogger>(() => dioModule.providePrettyLogger());
    gh.singleton<_i361.Dio>(
      () => dioModule.provideDio(
        gh<_i361.BaseOptions>(),
        gh<_i528.PrettyDioLogger>(),
      ),
    );
    gh.singleton<_i124.ApiServices>(
      () => dioModule.provideApiServices(gh<_i361.Dio>()),
    );
    gh.factory<_i691.CategoriesRemoteDataSource>(
      () => _i326.CategoriesRemoteDataSourceImpl(
        apiServices: gh<_i124.ApiServices>(),
      ),
    );
    gh.factory<_i975.CategoriesRepo>(
      () => _i1072.CategoriesRepoImpl(
        categoriesRemoteDataSource: gh<_i691.CategoriesRemoteDataSource>(),
      ),
    );
    gh.factory<_i620.BrandsRemoteDataSource>(
      () => _i406.BrandsRemoteDataSourceImpl(
        apiServices: gh<_i124.ApiServices>(),
      ),
    );
    gh.factory<_i11.AuthRemoteDataSource>(
      () =>
          _i502.AuthRemoteDataSourceImpl(apiServices: gh<_i124.ApiServices>()),
    );
    gh.factory<_i174.CategoriesUseCase>(
      () => _i174.CategoriesUseCase(categoriesRepo: gh<_i975.CategoriesRepo>()),
    );
    gh.factory<_i196.BrandsRepo>(
      () => _i441.BrandsRepoImpl(
        brandsRemoteDataSource: gh<_i620.BrandsRemoteDataSource>(),
      ),
    );
    gh.factory<_i171.AuthRepo>(
      () => _i602.AuthRepoImpl(
        authRemoteDataSource: gh<_i11.AuthRemoteDataSource>(),
      ),
    );
    gh.factory<_i386.BrandsUseCase>(
      () => _i386.BrandsUseCase(brandsRepo: gh<_i196.BrandsRepo>()),
    );
    gh.factory<_i672.HomeCubit>(
      () => _i672.HomeCubit(
        categoriesUseCase: gh<_i174.CategoriesUseCase>(),
        brandsUseCase: gh<_i386.BrandsUseCase>(),
      ),
    );
    gh.factory<_i646.LoginUseCase>(
      () => _i646.LoginUseCase(authRepo: gh<_i171.AuthRepo>()),
    );
    gh.factory<_i744.RegisterUseCase>(
      () => _i744.RegisterUseCase(authRepo: gh<_i171.AuthRepo>()),
    );
    gh.factory<_i735.RegisterCubit>(
      () => _i735.RegisterCubit(registerUseCase: gh<_i744.RegisterUseCase>()),
    );
    gh.factory<_i177.LoginCubit>(
      () => _i177.LoginCubit(loginUseCase: gh<_i646.LoginUseCase>()),
    );
    return this;
  }
}

class _$DioModule extends _i223.DioModule {}
