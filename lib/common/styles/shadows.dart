import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: AppColors.dark.withValues(alpha: 0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
  static final horizontalProductShadow = BoxShadow(
    color: AppColors.dark.withValues(alpha: 0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}
