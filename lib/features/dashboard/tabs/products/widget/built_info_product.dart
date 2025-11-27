import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/text_styles.dart';
import '../../../../../domain/entities/response/products/data_products.dart';
import 'built_image_product.dart';
import 'built_review_product.dart';

class BuiltInfoProduct extends StatelessWidget {
  const BuiltInfoProduct({super.key, required this.dataProducts});
  final DataProducts? dataProducts;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //todo image and love
        BuiltImageProduct(dataProducts: dataProducts),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 9.w),
          child: Column(
            spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dataProducts?.title ?? '',
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font18BlueDarkRegular,
              ),
              Text(
                dataProducts?.description ?? '',
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16BlueDarkRegular,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "EGP ${dataProducts?.price}",
                    style: TextStyles.font16BlueDarkRegular,
                  ),
                  Text(
                    "${(dataProducts?.price)! + 100} EGP",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font14OfferRegular.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              BuiltReviewProduct(review: dataProducts?.ratingsAverage ?? 0),
            ],
          ),
        ),
      ],
    );
  }
}
