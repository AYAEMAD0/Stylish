import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text_styles.dart';


class AppTheme {
  static final ThemeData theme = ThemeData(
      scaffoldBackgroundColor: AppColors.whiteColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.transparentColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.whiteColor,
          titleTextStyle: TextStyles.font20PrimarySemiBold,
          iconTheme: IconThemeData(color: AppColors.primaryColor,
          )
      )
  );
}
