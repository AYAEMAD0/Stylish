import 'package:injectable/injectable.dart';
import 'package:stylish/domain/entities/request/login_request.dart';
import 'package:stylish/domain/entities/response/auth_response.dart';
import 'package:stylish/domain/repo/auth/auth_repo.dart';

@injectable
class LoginUseCase {
  AuthRepo authRepo;
  LoginUseCase({required this.authRepo});

  Future<AuthResponse> call(LoginRequest loginRequest) {
    return authRepo.login(loginRequest);
  }
}
