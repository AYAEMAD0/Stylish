import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isShowPassword = false;
  void register() async {
    if (formKey.currentState!.validate()) {
      try {
      emit(AuthLoading());
      RegisterRequest registerRequest = RegisterRequest(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        rePassword: passwordController.text.trim(),
        phone: phoneController.text.trim(),
      );
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
  void togglePassword(bool isShowPassword){
    emit(AuthTogglePassword(isShowPassword: isShowPassword));
  }
}
