import '../../../domain/entities/response/auth_response.dart';

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
