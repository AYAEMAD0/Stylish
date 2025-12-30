import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../domain/entities/response/products/data_products.dart';

class BuiltImageProduct extends StatelessWidget {
  const BuiltImageProduct({super.key, this.dataProducts});
  final DataProducts? dataProducts;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            topLeft: Radius.circular(20.r),
          ),
          child: CachedNetworkImage(
            imageUrl: dataProducts?.imageCover ?? "",
            height: 120.h,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
            errorWidget: (context, url, error) =>
                Icon(
                  Icons.error,
                  color: AppColors.grayLightColor,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 6.w,
            vertical: 6.h,
          ),
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.whiteColor,
            child: SvgPicture.asset(
              AppAssets.favIcon,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
