import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> tabs = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.only(right: 4),
      controller: _tabController,
      isScrollable: true,
      tabAlignment: TabAlignment.start,

      dividerHeight: 0,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.primaryColor,
      ),
      tabs: tabs.map((text) {
        return Tab(
          child: Container(
            height: 45,

            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: _tabController.index == tabs.indexOf(text)
                  ? AppColors.primaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                text,
                style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
                  color: _tabController.index == tabs.indexOf(text)
                      ? Colors.white
                      : AppColors.primaryColor,
                ),
              ),
            ),
          ),
        );
      }).toList(),
      onTap: (_) {
        setState(() {});
      },
    );
  }
}
