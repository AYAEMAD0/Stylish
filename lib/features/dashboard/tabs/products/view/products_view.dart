import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/config/di.dart';
import 'package:stylish/core/theme/app_colors.dart';
import 'package:stylish/core/widgets/built_header_search.dart';
import 'package:stylish/core/widgets/built_main_error.dart';
import 'package:stylish/core/widgets/built_main_loading.dart';
import 'package:stylish/features/dashboard/tabs/products/widget/built_info_product.dart';
import '../viewmodel/products_cubit.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ProductsCubit viewModel = getIt<ProductsCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 17.w),
        child: Column(
          spacing: 17.h,
          children: [
            //todo header
            BuiltHeaderSearch(searchController: viewModel.searchController),
            BlocBuilder<ProductsCubit, ProductsState>(
              bloc: viewModel,
              builder: (context, state) {
                if (state is ProductsSuccess) {
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.w,
                        crossAxisSpacing: 10.h,
                        childAspectRatio: 0.6
                      ),
                      itemCount: state.productsResponse.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        var data = state.productsResponse.data?[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: AppColors.borderWithOpacityColor,
                              width: 1.7.w,
                            ),
                          ),
                          child: BuiltInfoProduct(dataProducts: data),
                        );
                      },
                    ),
                  );
                } else if (state is ProductsError) {
                  return BuiltMainError(
                    message: state.errorMessage,
                    onPressed: () {
                      viewModel.getAllProducts();
                    },
                  );
                } else {
                  return BuiltMainLoading();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
