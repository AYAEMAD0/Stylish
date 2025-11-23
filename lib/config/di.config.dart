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
import '../api/data_source/remote/auth_remote_data_source_impl.dart' as _i366;
import '../api/dio/dio_module.dart' as _i223;
import '../data/data_source/remote/auth_remote_data_source.dart' as _i1066;
import '../data/repo/auth/auth_repo_impl.dart' as _i602;
import '../domain/repo/auth/auth_repo.dart' as _i171;
import '../domain/usecases/login_use_case.dart' as _i646;
import '../domain/usecases/register_use_case.dart' as _i744;
import '../features/ui/auth/login/viewmodel/login_cubit.dart' as _i1006;
import '../features/ui/auth/register/viewmodel/register_cubit.dart' as _i735;

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
    gh.factory<_i1066.AuthRemoteDataSource>(
      () =>
          _i366.AuthRemoteDataSourceImpl(apiServices: gh<_i124.ApiServices>()),
    );
    gh.factory<_i171.AuthRepo>(
      () => _i602.AuthRepoImpl(
        authRemoteDataSource: gh<_i1066.AuthRemoteDataSource>(),
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
    gh.factory<_i1006.LoginCubit>(
      () => _i1006.LoginCubit(loginUseCase: gh<_i646.LoginUseCase>()),
    );
    return this;
  }
}

class _$DioModule extends _i223.DioModule {}
