import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stylish/core/routing/app_router.dart';
import 'package:stylish/stylish_app.dart';
import 'config/di.dart';
import 'config/my_bloc_observer.dart';

void main() {
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp( StylishApp(appRouter: AppRouter()));
}