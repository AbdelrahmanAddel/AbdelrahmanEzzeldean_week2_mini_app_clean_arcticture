import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';

Widget customTextSpan(String firstText, String secondText, bool isSelected) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: firstText,
          style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
            color: isSelected ? Colors.white : AppColors.textColor,
          ),
        ),
        TextSpan(
          text: secondText,
          style: AppTextStyles.Si14WeBoldLightGreyColor,
        ),
      ],
    ),
  );
}
