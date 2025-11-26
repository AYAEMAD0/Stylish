import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/core/constants/app_assets.dart';
import 'package:stylish/core/theme/app_colors.dart';
import 'tabs/fav/view/fav_view.dart';
import 'tabs/home/view/home_view.dart';
import 'tabs/product/view/product_view.dart';
import 'tabs/user/view/user_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int selectedIndex = 0;
  List<Widget> viewSelected = [
    HomeView(),
    ProductView(),
    FavView(),
    UserView(),
  ];
  List<String> icons = [
    AppAssets.homeIcon,
    AppAssets.productIcon,
    AppAssets.favIcon,
    AppAssets.userIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewSelected[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.r),
            topRight: Radius.circular(35.r),
          )
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: builtBottomTab(0, icons[0]), label: ""),
            BottomNavigationBarItem(icon: builtBottomTab(1, icons[1]), label: ""),
            BottomNavigationBarItem(icon: builtBottomTab(2, icons[2]), label: ""),
            BottomNavigationBarItem(icon: builtBottomTab(3, icons[3]), label: ""),
          ],
        ),
      ),
    );
  }

  Widget builtBottomTab(int index, String iconName) {
    return selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(25.r),
            ),
            child: SvgPicture.asset(
              iconName,
              width: 25.w,
              height: 25.h,
              colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
            ),
          )
        : SvgPicture.asset(iconName, width: 22.w, height: 22.h);
  }
}
