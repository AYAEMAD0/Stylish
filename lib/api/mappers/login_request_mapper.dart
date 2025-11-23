import 'package:stylish/api/model/request/login_request_dto.dart';
import 'package:stylish/domain/entities/request/login_request.dart';

extension LoginRequestMapper on LoginRequest{
  LoginRequestDto toLoginRequestDto(){
    return LoginRequestDto(
      password: password,
      email: email
    );
  }
}