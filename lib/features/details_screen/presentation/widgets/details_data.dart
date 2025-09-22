import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';

class DetailsData extends StatelessWidget {
  const DetailsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Divider(color: Color(0xff7472727A)),
          ),
          verticalSpace(12),
          _buildDetails(),
          verticalSpace(12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Divider(color: Color(0xff7472727A)),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDetailsItem('2.3M views', Assets.resourceImagesEyesIcon),
        _buildDetailsItem('2K clap', Assets.resourceImagesHandsClappingIcon),
        _buildDetailsItem('4 Seasons', Assets.resourceImagesClipIcon),
      ],
    );
  }

  Widget _buildDetailsItem(String text, String iconString) {
    return Row(
      children: [
        SvgPicture.asset(iconString),
        horizontalSpace(5),
        Text(
          text,
          style: AppTextStyles.Si14WeBoldLightGreyColor.copyWith(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
