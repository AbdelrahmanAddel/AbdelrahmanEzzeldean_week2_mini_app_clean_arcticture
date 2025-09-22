import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/widgets/home_page_body.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/widgets/home_view_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeViewBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: AppColors.lightBlue,
          ),
          Positioned(
            top: 15,
            left: 110,
            child: SizedBox(
              width: double.infinity,
              height: 300,
            
              child: Image.asset(
                Assets.resourceImagesHomeScreenStar,
                width: 432.0000104135409,
                height: 432.0000104135409,
                fit: BoxFit.contain,
              ),
            ),
          ),

          HomePageBody(),
        ],
      ),
    );
  }
}
