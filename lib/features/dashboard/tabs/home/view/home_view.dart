import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/config/di.dart';
import 'package:stylish/core/theme/app_colors.dart';
import 'package:stylish/core/widgets/built_header_search.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:stylish/core/widgets/built_main_error.dart';
import 'package:stylish/core/widgets/built_main_loading.dart';
import 'package:stylish/features/dashboard/tabs/home/viewmodel/home_cubit.dart';
import '../../../../../core/theme/text_styles.dart';
import '../widget/built_line_view_all.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeCubit viewModel = getIt<HomeCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getAllCategories();
    viewModel.getAllBrands();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 17.w),
        child: SingleChildScrollView(
          child: Column(
            spacing: 17.h,
            children: [
              //todo header
              BuiltHeaderSearch(searchController: viewModel.searchController),
              CarouselSlider(
                options: CarouselOptions(height: 170.h, autoPlay: true),
                items: viewModel.banner.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Image.asset(i),
                      );
                    },
                  );
                }).toList(),
              ),
              BuiltLineViewAll(textOne: "Categories", textTwo: "view all"),
              BlocBuilder<HomeCubit, HomeState>(
                bloc: viewModel,
                buildWhen: (previous, current) => current is HomeCategoriesSuccess || current is HomeCategoriesError || current is HomeCategoriesLoading,
                builder: (context, state) {
                  if (state is HomeCategoriesSuccess) {
                    return SizedBox(
                      height: 270.h,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.w,
                          crossAxisSpacing: 10.h,
                          mainAxisExtent: 100.h,
                        ),
                        itemCount: state.categoriesResponse?.data?.length??0,
                        itemBuilder: (context, index) {
                          var data=state.categoriesResponse?.data?[index];
                          return Column(
                            spacing: 10.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: CachedNetworkImage(
                                  imageUrl:data?.image??"",
                                  height: 60.h,
                                  width: 50.w,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(
                                        color: AppColors.primaryColor,
                                      ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: AppColors.grayLightColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data?.name??"",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.font14BlueDarkRegular,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    );

                  } else if (state is HomeCategoriesError) {
                    return BuiltMainError(
                      message: state.errorMessage,
                      onPressed: () {
                        viewModel.getAllCategories();
                      },
                    );
                  }else{
                    return BuiltMainLoading();
                  }
                },
              ),

              SizedBox(height: 6.h),
              BuiltLineViewAll(textOne: "Brands", textTwo: "view all"),
              BlocBuilder<HomeCubit, HomeState>(
                bloc: viewModel,
                buildWhen: (previous, current) => current is HomeBrandsSuccess || current is HomeBrandsError || current is HomeBrandsLoading,
                builder: (context, state) {
                  if (state is HomeBrandsSuccess) {
                    return SizedBox(
                      height: 270.h,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.w,
                          crossAxisSpacing: 10.h,
                          mainAxisExtent: 100.h,
                        ),
                        itemCount: state.brandsResponse.data?.length??0,
                        itemBuilder: (context, index) {
                          var data=state.brandsResponse.data?[index];
                          return Column(
                            spacing: 10.h,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: CachedNetworkImage(
                                  imageUrl:data?.image??"",
                                  height: 60.h,
                                  width: 50.w,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(
                                        color: AppColors.primaryColor,
                                      ),
                                  errorWidget: (context, url, error) => Icon(
                                    Icons.error,
                                    color: AppColors.grayLightColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  data?.name??"",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyles.font14BlueDarkRegular,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  } else if (state is HomeBrandsError) {
                    return BuiltMainError(
                      message: state.errorMessage,
                      onPressed: () {
                        viewModel.getAllBrands();
                      },
                    );
                  }else{
                    return BuiltMainLoading();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
