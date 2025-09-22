import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/fonts_strings.dart';

class AppTextStyles {
  static TextStyle Si30WeBoldTextColor = TextStyle(
    fontFamily: FontsStrings.raleway,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );
  static const TextStyle Si20WeBoldPrimaryColor = TextStyle(
    fontFamily: FontsStrings.raleway,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle Si14WeBoldLightGreyColor = TextStyle(
    fontFamily: FontsStrings.raleway,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.lightGrey,
  );
}
