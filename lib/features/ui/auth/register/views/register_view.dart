import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/config/di.dart';
import 'package:stylish/core/routing/routes.dart';
import 'package:stylish/features/ui/auth/auth_state.dart';
import 'package:stylish/features/ui/auth/register/viewmodel/register_cubit.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/helper/vaildator.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../../core/utils/custom_dialog.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterCubit viewModel = getIt<RegisterCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, AuthState>(
      bloc: viewModel,
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthLoading) {
          CustomDialog.showLoading(context: context);
        } else if (state is AuthError) {
          CustomDialog.showMessage(
            context: context,
            title: "Error",
            message: state.errorMessage,
            posActionName: "ok",
            posActionClick: ()=>Navigator.pop(context)
          );
        } else if (state is AuthSuccess) {
          CustomDialog.showMessage(
            context: context,
            title: "Success",
            message: "successfully register",
            posActionName: "ok",
            posActionClick: () {
              //todo nav into login
              Navigator.pushReplacementNamed(context, Routes.loginRouteName);
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
                      SizedBox(height: 30.h),
                      Text("Full Name", style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        hint: "enter your name",
                        controller: viewModel.nameController,
                        validator: (text) => ValidatorHelper.validateName(text),
                      ),
                      SizedBox(height: 20.h),
                      Text("Email", style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        keyboard: TextInputType.emailAddress,
                        hint: "enter your email",
                        controller: viewModel.emailController,
                        validator: (text) =>
                            ValidatorHelper.validateEmail(text),
                      ),
                      SizedBox(height: 20.h),
                      Text("Password", style: TextStyles.font18WhiteMedium),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        keyboard: TextInputType.visiblePassword,
                        hint: "enter your password",
                        controller: viewModel.passwordController,
                        validator: (text) =>
                            ValidatorHelper.validatePassword(text),
                        obscure: isShowPassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            //todo show password
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
                      SizedBox(height: 20.h),
                      Text(
                        "Mobile Number",
                        style: TextStyles.font18WhiteMedium,
                      ),
                      SizedBox(height: 8.h),
                      CustomTextField(
                        keyboard: TextInputType.phone,
                        hint: "enter your mobile",
                        controller: viewModel.phoneController,
                        validator: (text) =>
                            ValidatorHelper.validateMobile(text),
                      ),
                      SizedBox(height: 26.h),
                      CustomButton(
                        onPressed: () async {
                          //todo logic signup
                          viewModel.register();
                        },
                        text: 'Create Account',
                        styleText: TextStyles.font20PrimarySemiBold,
                        paddingHeight: 17.h,
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
