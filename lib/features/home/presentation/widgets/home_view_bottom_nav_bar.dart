import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';

class HomeViewBottomNavBar extends StatelessWidget {
  const HomeViewBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: BottomNavigationBar(
        iconSize: 50,
        currentIndex: currentIndex,
        onTap: onTap,
        elevation: 0,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.white,
      
        items: [
          BottomNavigationBarItem(
            icon: _buildNavItem(
              Assets.resourceImagesHomeIcon,
              "Home",
              currentIndex == 0,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(
              Assets.resourceImagesCategoryIcon,
              "Category",
              currentIndex == 1,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(
              Assets.resourceImagesSearchIcon,
              "Search",
              currentIndex == 2,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(
              Assets.resourceImagesLanguageIcon,
              "Language",
              currentIndex == 3,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _buildNavItem(
              Assets.resourceImagesSettingsIcon,
              "Settings",
              currentIndex == 4,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String iconPath, String data, bool isSelected) {
    return Container(
      height: 38,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          horizontalSpace(4),
          isSelected
              ? Text(
                  data,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
