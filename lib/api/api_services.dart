import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:stylish/api/api_end_points.dart';
import 'package:stylish/api/model/request/login_request_dto.dart';
import 'package:stylish/api/model/request/register_request_dto.dart';
import 'package:stylish/api/model/response/auth_response_dto.dart';

part 'api_services.g.dart';


@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiEndPoints.loginEndPoint)
  Future<AuthResponseDto> login(@Body() LoginRequestDto loginRequest);

  @POST(ApiEndPoints.registerEndPoint)
  Future<AuthResponseDto> register(@Body() RegisterRequestDto registerRequest);
}
