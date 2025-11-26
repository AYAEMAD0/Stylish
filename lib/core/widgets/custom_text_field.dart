import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextStyle? textStyle;
  final String hint;
  final TextStyle? hintStyle;
  final String? label;
  final TextStyle? labelStyle;

  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Color? fillColor;

  final Color? borderColor;
  final int maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboard;
  final bool? obscure;
  final String? obscureCharacter;
  final void Function(String)? onChanged;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.textStyle,
    this.hintStyle,
    this.borderColor,
    this.fillColor,
    this.validator,
    this.maxLines = 1,
    this.keyboard,
    this.label,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.obscure = false,
    this.obscureCharacter,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle??TextStyles.font18BlackMedium,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      autofocus: false,
      obscureText: obscure!,
      obscuringCharacter: obscureCharacter ?? "*",
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      cursorHeight: 25.h,
      cursorWidth: 3.w,
      keyboardType: keyboard ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: hintStyle??TextStyles.font18GrayLight,
        labelText: label,
        labelStyle: labelStyle,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        enabledBorder: builtBorder(borderColor??AppColors.transparentColor),
        focusedBorder: builtBorder(borderColor??AppColors.transparentColor),
        errorBorder: builtBorder(),
        focusedErrorBorder: builtBorder(),
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        errorStyle: TextStyles.font18RedMedium,
        filled: true,
        fillColor: fillColor??AppColors.whiteColor,
      ),
    );
  }

  OutlineInputBorder builtBorder([Color colorBorder = AppColors.redColor]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colorBorder, width: 1.1),
    );
  }
}
