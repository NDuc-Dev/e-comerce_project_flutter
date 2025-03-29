import 'package:e_cormerce_project/utils/constants/colors.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_app_bar_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_bottom_sheet_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_checkbox_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_chip_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_elevation_button_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_out_line_button_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_text_field_theme.dart';
import 'package:e_cormerce_project/utils/theme/custom_theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.light,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevationButtonTheme.lightElevationButtonTheme,
    outlinedButtonTheme: AppOutLineButtonTheme.lightOutLineButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.dark,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevationButtonTheme.darkElevationButtonTheme,
    outlinedButtonTheme: AppOutLineButtonTheme.darkOutLineButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme
  );
}
