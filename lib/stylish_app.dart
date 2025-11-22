import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class StylishApp extends StatelessWidget {
  final AppRouter appRouter;

  const StylishApp({super.key,required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(debugShowCheckedModeBanner: false,
          initialRoute: Routes.loginRouteName,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
