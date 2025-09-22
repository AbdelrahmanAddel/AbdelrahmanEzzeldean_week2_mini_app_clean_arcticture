import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/widgets/character_list_view.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/widgets/custom_tab_bar.dart';
import 'package:mini_app_clean_arcticture/features/home/presentation/widgets/home_list_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(23),
            Text(
              'Where Anime Comes Alive',
              style: AppTextStyles.Si30WeBoldTextColor,
            ),
            verticalSpace(23),
            CustomTabBar(),
            verticalSpace(20),
            CoversListView(),
            verticalSpace(24),
            Text(
              'Top Characters',
              style: AppTextStyles.Si30WeBoldTextColor.copyWith(fontSize: 26),
            ),
            verticalSpace(24),

            CharacterListView(),
          ],
        ),
      ),
    );
  }
}
