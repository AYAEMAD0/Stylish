import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:stylish/domain/entities/request/login_request.dart';
import 'package:stylish/domain/usecases/login_use_case.dart';
import '../../../../../core/exceptions/app_exception.dart';
import '../../auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class LoginCubit extends Cubit<AuthState> {
  LoginUseCase loginUseCase;
  LoginCubit({required this.loginUseCase}) : super(AuthInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isShowPassword=false;

  void login() async {
    if(formKey.currentState!.validate()){
      try {
        emit(AuthLoading());
        LoginRequest loginRequest = LoginRequest(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        var response = await loginUseCase.call(loginRequest);
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
