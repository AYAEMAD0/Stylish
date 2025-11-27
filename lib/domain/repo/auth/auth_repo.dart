//todo interface auth repo
import 'package:stylish/domain/entities/request/auth/login_request.dart';
import 'package:stylish/domain/entities/request/auth/register_request.dart';
import 'package:stylish/domain/entities/response/auth/auth_response.dart';

abstract class AuthRepo {
  Future<AuthResponse> login(LoginRequest loginRequest);
  Future<AuthResponse> register(RegisterRequest registerRequest);
}
