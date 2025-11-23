import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/data/data_source/remote/auth_remote_data_source.dart';
import 'package:stylish/domain/entities/request/login_request.dart';
import 'package:stylish/domain/entities/request/register_request.dart';
import 'package:stylish/domain/entities/response/auth_response.dart';
import '../../../domain/repo/auth/auth_repo.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo{
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<AuthResponse> login(LoginRequest loginRequest) {
    // TODO: implement login
    return authRemoteDataSource.login(loginRequest);
  }

  @override
  Future<AuthResponse> register(RegisterRequest registerRequest) {
    // TODO: implement register
    return authRemoteDataSource.register(registerRequest);
  }

}