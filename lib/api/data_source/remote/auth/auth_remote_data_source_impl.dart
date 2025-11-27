import 'package:injectable/injectable.dart';
import 'package:stylish/api/api_services.dart';
import 'package:stylish/api/mappers/auth/response/auth_response_mapper.dart';
import 'package:stylish/api/mappers/auth/request/login_request_mapper.dart';
import 'package:stylish/api/mappers/auth/request/register_request_mapper.dart';
import 'package:stylish/data/data_source/remote/auth/auth_remote_data_source.dart';
import 'package:stylish/domain/entities/request/auth/login_request.dart';
import 'package:stylish/domain/entities/request/auth/register_request.dart';
import 'package:stylish/domain/entities/response/auth/auth_response.dart';

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  ApiServices apiServices;
  AuthRemoteDataSourceImpl({required this.apiServices});
  @override
  Future<AuthResponse> login(LoginRequest loginRequest) async{
    //todo LoginRequest => LoginRequestDto
    var authResponseDto = await apiServices.login(loginRequest.toLoginRequestDto());
    //todo AuthResponseDto => AuthResponse
    return authResponseDto.toAuthResponse();
  }

  @override
  Future<AuthResponse> register(RegisterRequest registerRequest)async {
    // todo RegisterRequest => RegisterRequestDto
   var authResponseDto=await apiServices.register(registerRequest.toRegisterRequestDto());
   //todo AuthResponseDto => AuthResponse
    return authResponseDto.toAuthResponse();
  }
}
