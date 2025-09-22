import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';
import 'package:mini_app_clean_arcticture/features/home/data/datasources/local_data_source/home_local_datasource.dart';

class CharacterListView extends StatelessWidget {
  const CharacterListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _buildItem(index),

        separatorBuilder: (BuildContext context, int index) =>
            horizontalSpace(10),
        itemCount: HomeLocalDatasource.topCharacterData.length,
      ),
    );
  }

  Widget _buildItem(int currentIndex) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(HomeLocalDatasource.characters[currentIndex]),
            ),

            shape: CircleBorder(),
          ),
        ),
        verticalSpace(10),
        Text(
          HomeLocalDatasource.topCharacterData[currentIndex].keys.first,
          style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
            color: AppColors.textColor,
          ),
        ),
        verticalSpace(4),
        Text(
          HomeLocalDatasource.topCharacterData[currentIndex].values.last,
          style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
            color: AppColors.lightGrey,
          ),
        ),
      ],
    );
  }
}
