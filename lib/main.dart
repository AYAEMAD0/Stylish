import 'package:flutter/material.dart';
import 'package:stylish/core/routing/app_router.dart';
import 'package:stylish/stylish_app.dart';
import 'config/di.dart';

void main() {
  configureDependencies();
  runApp( StylishApp(appRouter: AppRouter()));
}