import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/text_styles.dart';

class BuiltReviewProduct extends StatelessWidget {
  const BuiltReviewProduct({super.key, required this.review});
  final double review;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Review($review)",
          style: TextStyles.font14BlueDarkRegular,
        ),
        SvgPicture.asset(AppAssets.starIcon),
        Spacer(),
        CircleAvatar(
          radius: 17.r,
          backgroundColor: AppColors.primaryColor,
          child: Icon(Icons.add, color: AppColors.whiteColor),
        ),
      ],
    );
  }
}
