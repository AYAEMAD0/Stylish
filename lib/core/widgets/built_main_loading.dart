import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class BuiltMainLoading extends StatelessWidget {
  const BuiltMainLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: AppColors.primaryColor),
    );
  }
}
