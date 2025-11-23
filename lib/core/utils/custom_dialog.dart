import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/theme/app_colors.dart';
import '../theme/text_styles.dart';

class CustomDialog {
  static void showLoading({
    required BuildContext context,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.whiteColor,
          title: Row(
            spacing: 15.w,
            children: [
              CircularProgressIndicator(color: AppColors.primaryColor),
              Text("Loading", style: TextStyles.font20PrimarySemiBold),
            ],
          ),
        );
      },
    );
  }

  static void hideLoading({required BuildContext context}) {
    Navigator.pop(context);
  }

  static void showMessage({
    required BuildContext context,
    required String message,
    required String title,
    String? posActionName,
    Function? posActionClick,
    String? nagActionName,
    Function? nagActionClick,
  }) {
    List<Widget>? actions = [];
    if (posActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            posActionClick?.call();
          },
          child: Text(posActionName, style: TextStyles.font20PrimarySemiBold),
        ),
      );
    }
    if (nagActionName != null) {
      actions.add(
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            nagActionClick?.call();
          },
          child: Text(nagActionName, style: TextStyles.font20PrimarySemiBold),
        ),
      );
    }

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.whiteColor,
          title: Text(title, style: TextStyles.font20PrimarySemiBold),
          content: Text(message, style: TextStyles.font18BlackMedium),
          actions: actions,
        );
      },
    );
  }
}
