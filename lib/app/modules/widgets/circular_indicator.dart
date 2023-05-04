import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';
import 'package:untitled/app/modules/discovery_screen/discovery_screen.dart';

class MyCircularIndicator extends StatelessWidget {
  const MyCircularIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Get.to(const DiscoveryScreen()),
        child: CircularPercentIndicator(
          radius: 130.r,
          lineWidth: 20.w,
          percent: 0.65,
          progressColor: AppColors.kPrimaryColor,
          backgroundColor: AppColors.kProgressIndicatorBackgroundColor,
          circularStrokeCap: CircularStrokeCap.round,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.bolt,
                color: AppColors.kPrimaryColor,
                size: 50,
              ),
              Text(
                "617",
                style: AppTypography.kBold40
                    .copyWith(color: AppColors.kWhiteColor, letterSpacing: 3),
              ),
              Text(
                "REMAINING",
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kGreyColor, letterSpacing: 3),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
