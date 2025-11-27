import 'package:stylish/api/model/request/auth/login_request_dto.dart';
import 'package:stylish/domain/entities/request/auth/login_request.dart';

extension LoginRequestMapper on LoginRequest{
  LoginRequestDto toLoginRequestDto(){
    return LoginRequestDto(
      password: password,
      email: email
    );
  }
}