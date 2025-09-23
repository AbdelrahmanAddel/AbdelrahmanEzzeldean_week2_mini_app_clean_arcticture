import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/features/upgrade_plan/presentation/widgets/upgrade_plan_content.dart';

class UpgradePlanBody extends StatelessWidget {
  const UpgradePlanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 800,
          color: Color(0xffe2e4fe),
        ),
        Positioned(
          right: 100,
          child: Image.asset(
            Assets.resourceImagesUpgradePlanLeftStar,
            fit: BoxFit.contain,

            width: 388.4197449715141,
            height: 388.4197449715141,
          ),
        ),
        Positioned(
          left: 230,
          top: 170,
          child: Image.asset(
            Assets.resourceImagesUpgradePlanRightStar,
            fit: BoxFit.contain,

            width: 288.95251610421343,
            height: 288.95251610421343,
          ),
        ),
        UpgradePlanContent(),
      ],
    );
  }
}
