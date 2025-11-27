import '../../../domain/entities/response/auth/auth_response.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  AuthResponse authResponse;
  AuthSuccess({required this.authResponse});
}

class AuthError extends AuthState {
  String errorMessage;
  AuthError({required this.errorMessage});
}
class AuthTogglePassword extends AuthState {
  bool isShowPassword;
  AuthTogglePassword({required this.isShowPassword});
}
