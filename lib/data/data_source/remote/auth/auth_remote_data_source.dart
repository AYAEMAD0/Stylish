import '../../../../domain/entities/request/auth/login_request.dart';
import '../../../../domain/entities/request/auth/register_request.dart';
import '../../../../domain/entities/response/auth/auth_response.dart';

//todo interface auth remote data source
abstract class AuthRemoteDataSource{
  Future<AuthResponse> login(LoginRequest loginRequest);
  Future<AuthResponse> register(RegisterRequest registerRequest);
}