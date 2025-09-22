import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mini_app_clean_arcticture/core/constants/assets.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';
import 'package:mini_app_clean_arcticture/features/details_screen/presentation/widgets/categories_item.dart';
import 'package:mini_app_clean_arcticture/features/details_screen/presentation/widgets/details_data.dart';

class DetailsPageBody extends StatelessWidget {
  const DetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(18),
        CategoriesItem(),
        verticalSpace(23),
        DetailsData(),
        verticalSpace(17),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.resourceImagesFireIcon),
              horizontalSpace(7),
              Flexible(
                child: Text(
                  'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                  style: AppTextStyles.Si14WeBoldLightGreyColor.copyWith(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
