import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';

class MySmallCircularIndicator extends StatelessWidget {
  final String title;
  final String value;
  final double percent;

  const MySmallCircularIndicator({
    super.key,
    required this.title,
    required this.value,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      circularStrokeCap: CircularStrokeCap.round,
      radius: 35.r,
      progressColor: AppColors.kPrimaryColor,
      percent: percent,
      backgroundColor: AppColors.kProgressIndicatorBackgroundColor,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                AppTypography.kMedium10.copyWith(color: AppColors.kGreyColor),
          ),
          Text(
            value,
            style:
                AppTypography.kMedium12.copyWith(color: AppColors.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
