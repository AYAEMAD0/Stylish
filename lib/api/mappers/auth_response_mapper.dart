import 'package:stylish/api/mappers/user_mapper.dart';
import 'package:stylish/api/model/response/auth_response_dto.dart';
import 'package:stylish/core/exceptions/app_exception.dart';
import 'package:stylish/domain/entities/response/auth_response.dart';

extension AuthResponseMapper on AuthResponseDto{
  AuthResponse toAuthResponse(){
    if(token!=null|| token!.isNotEmpty|| user!=null){
      return AuthResponse(
        message: message,
        token: token,
        user: user!.toUser(),
      );
    }else{
      throw ServerException(message: "Failed Authentication");
    }

  }
}