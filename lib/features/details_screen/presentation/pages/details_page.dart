import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/features/details_screen/presentation/widgets/details_bottom_navigation_bar.dart';
import 'package:mini_app_clean_arcticture/features/details_screen/presentation/widgets/home_details_body.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C1E51),
      bottomNavigationBar: DetailsBottomNavigationBar(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            width: double.infinity,
            height: 519,
            Assets.resourceImagesDetailsScren,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 450,
            child: Image.asset(
              width: 193,
              height: 146.16864013671875,
              fit: BoxFit.contain,
              Assets.resourceImagesDemonSlayer,
            ),
          ),
          Positioned(left: 0, right: 0, top: 591, child: DetailsPageBody()),
        ],
      ),
    );
  }
}
