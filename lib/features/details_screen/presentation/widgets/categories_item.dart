import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCategoriesItem('Dark Fantasy'),
        horizontalSpace(12),
        _buildCategoriesItem('Action'),
        horizontalSpace(12),
        _buildCategoriesItem('Adventure'),
      ],
    );
  }

  Widget _buildCategoriesItem(String text) {
    return Container(
      width: 120,
      height: 35,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 1, color: Colors.black, offset: Offset(0, 4)),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff554b73),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            maxLines: 1,
            text,
            style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
              fontSize: 14,

              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
