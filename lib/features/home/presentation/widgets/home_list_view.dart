import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';
import 'package:mini_app_clean_arcticture/features/home/data/datasources/local_data_source/home_local_datasource.dart';

class CoversListView extends StatelessWidget {
  const CoversListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => _buildItem(index),
        itemCount: HomeLocalDatasource.coversData.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) =>
            horizontalSpace(10),
      ),
    );
  }

  Widget _buildItem(int currentIndex) {
    return Column(
      children: [
        Container(
          width: 198,
          height: 247,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(HomeLocalDatasource.covers[currentIndex]),
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,

            child: Padding(
              padding: const EdgeInsets.only(right: 23.0, top: 12),
              child: Image.asset(
                Assets.resourceImagesRateIcon,
                fit: BoxFit.fill,
                width: 41,
                height: 18,
              ),
            ),
          ),
        ),
        verticalSpace(8),
        Text(
          HomeLocalDatasource.coversData[currentIndex].keys.first,
          style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
            color: AppColors.textColor,
          ),
        ),
        verticalSpace(4),
        Text(
          HomeLocalDatasource.coversData[currentIndex].values.first,
          style: AppTextStyles.Si14WeBoldLightGreyColor,
        ),
      ],
    );
  }
}
