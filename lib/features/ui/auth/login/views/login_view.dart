import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/config/di.dart';
import 'package:stylish/core/routing/routes.dart';
import 'package:stylish/core/theme/app_colors.dart';
import 'package:stylish/features/ui/auth/auth_state.dart';
import 'package:stylish/features/ui/auth/login/viewmodel/login_cubit.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/helper/vaildator.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../../core/utils/custom_dialog.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../widget/already_and_donot_have_account.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginCubit viewModel = getIt<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, AuthState>(
      bloc: viewModel,
      listener: (context, state) {
        if (state is AuthLoading) {
          CustomDialog.showLoading(context: context);
        } else if (state is AuthError) {
          CustomDialog.showMessage(
            context: context,
            title: "Error",
            message: state.errorMessage,
            posActionName: "ok",
            posActionClick: () => Navigator.pop(context),
          );
        } else if (state is AuthSuccess) {
          CustomDialog.showMessage(
            context: context,
            title: "Success",
            message: "successfully login",
            posActionName: "ok",
            posActionClick: () {
              //todo nav into home
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routes.dashboardRouteName,
                (route) => false,
              );
            },
          );
        }
      },
      builder: (context, state) {
        bool isShowPassword = viewModel.isShowPassword;
        if (state is AuthTogglePassword) {
          isShowPassword = state.isShowPassword;
        }

        return Scaffold(
          backgroundColor: AppColors.primaryColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 14.h),
                child: Form(
                  key: viewModel.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 30.h),
                      SvgPicture.asset(AppAssets.appLogo, height: 90.h),
                      SizedBox(height: 40.h),
                      Text("Email", style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 14.h),
                      CustomTextField(
                        hint: "enter your email",
                        keyboard: TextInputType.emailAddress,
                        controller: viewModel.emailController,
                        validator: ValidatorHelper.validateEmail,
                      ),
                      SizedBox(height: 26.h),
                      Text("Password", style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 14.h),
                      CustomTextField(
                        keyboard: TextInputType.visiblePassword,
                        hint: "enter your password",
                        controller: viewModel.passwordController,
                        validator: ValidatorHelper.validatePassword,
                        obscure: isShowPassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            viewModel.togglePassword(!isShowPassword);
                          },
                          icon: Icon(
                            isShowPassword
                                ? Icons.visibility_off_sharp
                                : Icons.visibility,
                          ),
                        ),
                        suffixIconColor: AppColors.grayLightColor,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            //todo forget password
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyles.font18WhiteRegular,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      CustomButton(
                        onPressed: () {
                          viewModel.login();
                        },
                        text: 'Login',
                        styleText: TextStyles.font20PrimarySemiBold,
                        paddingHeight: 17.h,
                      ),
                      SizedBox(height: 5.h),
                      AlreadyAndDonotHaveAccount(
                        text: 'Don’t have an account?',
                        textButton: "Create Account",
                        onPressed: () {
                          //todo nav into register
                          Navigator.pushReplacementNamed(
                            context,
                            Routes.registerRouteName,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
