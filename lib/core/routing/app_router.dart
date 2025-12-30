import 'package:flutter/material.dart';
import 'package:stylish/core/routing/routes.dart';
import '../../features/auth/login/views/login_view.dart';
import '../../features/auth/register/views/register_view.dart';
import '../../features/dashboard/dashboard_view.dart';
import '../../features/dashboard/tabs/fav/view/fav_view.dart';
import '../../features/dashboard/tabs/home/view/home_view.dart';
import '../../features/dashboard/tabs/products/view/products_view.dart';
import '../../features/dashboard/tabs/user/view/user_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRouteName:
        return MaterialPageRoute(builder: (context) => LoginView());
      case Routes.registerRouteName:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case Routes.dashboardRouteName:
        return MaterialPageRoute(builder: (context) => DashboardView());
      case Routes.homeRouteName:
        return MaterialPageRoute(builder: (context) => HomeView());
      case Routes.productsRouteName:
        return MaterialPageRoute(builder: (context) => ProductsView());
      case Routes.favRouteName:
        return MaterialPageRoute(builder: (context) => FavView());
      case Routes.userRouteName:
        return MaterialPageRoute(builder: (context) => UserView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
