import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/core/exceptions/app_exception.dart';
import 'package:stylish/domain/entities/request/register_request.dart';
import 'package:stylish/domain/usecases/register_use_case.dart';
import 'package:stylish/features/ui/auth/auth_state.dart';

@injectable
class RegisterCubit extends Cubit<AuthState> {
  RegisterUseCase registerUseCase;
  RegisterCubit({required this.registerUseCase}) : super(AuthInitial());

  void register() async {
    try {
      emit(AuthLoading());
      RegisterRequest registerRequest = RegisterRequest();
      var response = await registerUseCase.call(registerRequest);
      emit(AuthSuccess(authResponse: response));
    } on AppException catch (e) {
      emit(AuthError(errorMessage: e.message));
    } on DioException catch (e) {
      final message = (e.error is AppException)
          ? (e.error as AppException).message
          : "UnExpected occurred";
      emit(AuthError(errorMessage: message));
    }
  }
}
