import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'custom_button.dart';

class BuiltMainError extends StatelessWidget {
  const BuiltMainError({super.key, required this.message, required this.onPressed});

  final String message;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
     return Column(
       spacing: 5.h,
       children: [
      Text(message,style: TextStyles.font20PrimarySemiBold,),
      SizedBox(
        width: 110.w,
        child: CustomButton(
          onPressed: onPressed,
          paddingHeight: 12.h,
          backgroundColor: AppColors.primaryColor,
          text: "Try Again ",
          styleText: TextStyles.font18WhiteMedium,
        ),
      )
    ],);
  }
}
