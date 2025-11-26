import 'package:flutter/material.dart';
import 'package:stylish/core/routing/routes.dart';

import '../../features/auth/login/views/login_view.dart';
import '../../features/auth/register/views/register_view.dart';
import '../../features/dashboard/dashboard_view.dart';


class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRouteName:
        return MaterialPageRoute(builder: (context) => LoginView());
      case Routes.registerRouteName:
        return MaterialPageRoute(builder: (context) => RegisterView());
      case Routes.dashboardRouteName:
        return MaterialPageRoute(builder: (context) => DashboardView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
