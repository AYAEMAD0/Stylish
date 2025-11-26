import 'package:stylish/api/model/request/register_request_dto.dart';
import '../../domain/entities/request/register_request.dart';

extension RegisterRequestMapper on RegisterRequest{
  RegisterRequestDto toRegisterRequestDto(){
    return RegisterRequestDto(
      name: name,
      email: email,
      password: password,
      phone: phone,
      rePassword: rePassword
    );
  }
}