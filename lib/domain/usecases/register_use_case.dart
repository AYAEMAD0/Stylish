import 'package:injectable/injectable.dart';
import 'package:stylish/domain/repo/auth/auth_repo.dart';
import '../entities/request/auth/register_request.dart';
import '../entities/response/auth/auth_response.dart';

@injectable
class RegisterUseCase {
  AuthRepo authRepo;
  RegisterUseCase({required this.authRepo});

  Future<AuthResponse> call(RegisterRequest registerRequest) {
    return authRepo.register(registerRequest);
  }
}
