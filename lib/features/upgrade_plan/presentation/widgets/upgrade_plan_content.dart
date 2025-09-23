import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';
import 'package:mini_app_clean_arcticture/features/upgrade_plan/presentation/widgets/change_subscribe_plan.dart';

class UpgradePlanContent extends StatelessWidget {
  const UpgradePlanContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            verticalSpace(67),
            Text('Upgrade Plan', style: AppTextStyles.Si30WeBoldTextColor),
            Image.asset(Assets.resourceImagesRocketBoy),
            verticalSpace(4),
            Text(
              "Seamless Anime\nExperience, Ad-Free.",
              style: AppTextStyles.Si30WeBoldTextColor,
              textAlign: TextAlign.center,
            ),
            verticalSpace(4),
            Text(
              "Enjoy unlimited animestreaming without\ninterruptions.",
              style: AppTextStyles.Si14WeBoldLightGreyColor.copyWith(
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpace(39),

            ChangeSubscribePlan(),
            verticalSpace(20),
            MaterialButton(
              minWidth: 343,
              height: 46,

              onPressed: () {},
              shape: StadiumBorder(),
              color: AppColors.primaryColor,
              child: Text(
                'Continue',
                style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
