import 'package:flutter/material.dart';
import 'package:mini_app_clean_arcticture/core/common/widgets/custom_text_span_widget.dart';
import 'package:mini_app_clean_arcticture/core/constants/colors.dart';
import 'package:mini_app_clean_arcticture/core/constants/text_style.dart';
import 'package:mini_app_clean_arcticture/core/helper/spacer.dart';

class ChangeSubscribePlan extends StatefulWidget {
  const ChangeSubscribePlan({super.key});

  @override
  State<ChangeSubscribePlan> createState() => _ChangeSubscribePlanState();
}

class _ChangeSubscribePlanState extends State<ChangeSubscribePlan> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSubscribePlanItem(
          'Monthly',
          '\$5 USD ',
          '/Month',
          selectedIndex == 0,
          () {
            setState(() {
              selectedIndex = 0;
            });
          },
        ),
        verticalSpace(10),
        _buildSubscribePlanItem(
          'Annually',
          '\$50 USD ',
          '/Year',
          selectedIndex == 1,
          () {
            setState(() {
              selectedIndex = 1;
            });
          },
        ),
      ],
    );
  }

  Widget _buildSubscribePlanItem(
    String period,
    String firstTitle,
    String secondTitle,
    bool isSelected,
    void Function()? onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 342,
        height: 102,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Color(0xff18153F) : Colors.white,
        ),
        child: _subscribePlanItemContent(
          isSelected,
          period,

          firstTitle,
          secondTitle,
        ),
      ),
    );
  }

  Widget _subscribePlanItemContent(
    bool isSelected,

    String period,
    String firstTitle,
    String secondTitle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                period,
                style: AppTextStyles.Si20WeBoldPrimaryColor.copyWith(
                  color: isSelected ? Colors.white : AppColors.textColor,
                ),
              ),
              horizontalSpace(8),

              customTextSpan(firstTitle, secondTitle, isSelected),
              horizontalSpace(8),
              Text(
                'Include Family Sharing',
                style: AppTextStyles.Si14WeBoldLightGreyColor.copyWith(
                  color: isSelected ? Colors.white : AppColors.textColor,
                ),
              ),
            ],
          ),
          Checkbox(
            value: isSelected,
            onChanged: (_) {},
            activeColor: Color(0xff5436F8),
            checkColor: Colors.black,
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }
}
