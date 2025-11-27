import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_assets.dart';
import '../theme/app_colors.dart';
import '../theme/text_styles.dart';
import 'custom_text_field.dart';

class BuiltHeaderSearch extends StatelessWidget {
  const BuiltHeaderSearch({super.key, required this.searchController});
  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 13.w,
      children: [
        Expanded(
          child: CustomTextField(
            controller: searchController,
            hint: "what do you search for?",
            textStyle: TextStyles.font14BlueDarkWithOpacityLight,
            borderColor: AppColors.primaryColor,
            radius: 50.r,
            contentPadding: EdgeInsets.symmetric(vertical: 15.h),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 15.h,
              ),
              child: SvgPicture.asset(AppAssets.searchIcon),
            ),
          ),
        ),
        //todo cart shopping
        SvgPicture.asset(
          AppAssets.cartShoppingIcon,
          colorFilter: ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
