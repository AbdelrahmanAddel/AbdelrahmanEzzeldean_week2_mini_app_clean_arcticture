import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';

class DetailsBottomNavigationBar extends StatefulWidget {
  const DetailsBottomNavigationBar({super.key});

  @override
  State<DetailsBottomNavigationBar> createState() =>
      _DetailsBottomNavigationBarState();
}

class _DetailsBottomNavigationBarState
    extends State<DetailsBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Color(0xff16103C),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBottomNavigationBarItem(
                'preview',
                Assets.resourceImagesPreviewIcon,
                currentIndex == 0,
                () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              _buildBottomNavigationBarItem(
                'Watch Now',
                Assets.resourceImagesWatchIcon,
                currentIndex == 1,
                () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem(
    String text,
    String iconString,
    bool isSelected,
    void Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 44.38823699951172,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Color(0xff554b73),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              SvgPicture.asset(iconString),
              horizontalSpace(6),
              Text(
                text,
                style: AppTextStyles.Si14WeBoldLightGreyColor.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
