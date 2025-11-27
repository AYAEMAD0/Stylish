import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'font_weight_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle font24WhiteSemiBold = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.whiteColor,
  );
  static TextStyle font16WhiteLight = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.whiteColor,
  );
  static TextStyle font18WhiteMedium = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.whiteColor,
  );
  static TextStyle font18WhiteRegular = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.whiteColor,
  );
  static TextStyle font18GrayLight = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.grayColor,
  );
  static TextStyle font20PrimarySemiBold = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.primaryColor,
  );
  static TextStyle font14BlueDarkWithOpacityLight = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.blueDarkWithOpacityColor,
  );
  static TextStyle font20BlueDarkMedium = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.blueDarkColor,
  );
  static TextStyle font12BlueDarkRegular = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.blueDarkColor,
  );
  static TextStyle font14BlueDarkRegular = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.blueDarkColor,
  );
  static TextStyle font11OfferRegular = GoogleFonts.poppins(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.offerWithOpacityColor,
  );
  static TextStyle font11BlueDarkRegular = GoogleFonts.poppins(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.blueDarkColor,
  );
  static TextStyle font14BlueDarkWithOpacityRegular = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.blueDarkWithOpacityColor,
  );
  static TextStyle font18BlueDarkWithOpacityMedium = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.blueDarkWithOpacityColor,
  );
  static TextStyle font18RedMedium = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.redColor,
  );
  static TextStyle font18BlackMedium = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.blackColor,
  );
}