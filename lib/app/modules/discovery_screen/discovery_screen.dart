import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:untitled/app/data/constants/app_assets.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';
import 'package:untitled/app/modules/widgets/button.dart';
import 'package:untitled/app/modules/widgets/small_circular_indicator.dart';
import '../widgets/custom_column_infor.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({super.key});

  @override
  State<DiscoveryScreen> createState() => DiscoveryScreenState();
}

class DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.kGradient1,
            AppColors.kGradient2,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppAssets.kFood,
                    height: 250.h,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomColumn2(heading: "SERVES", value: "4"),
                        CustomColumn2(heading: "COOKS IN", value: "1h"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "Chicken & spring \ngreen bun cha",
                style: AppTypography.kExtraBold30
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              Text(
                "A super-fresh and zingy salad packed with green veg and gnarly, sticky-sweet chicken, topped with crispy shallots. Delicious!",
                style: AppTypography.kMedium12.copyWith(
                  color: AppColors.kGreyColor,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MySmallCircularIndicator(
                      title: "CAL", value: "478", percent: 0.7),
                  MySmallCircularIndicator(
                      title: "FAT", value: "20g", percent: 0.3),
                  MySmallCircularIndicator(
                      title: "CARBS", value: "52g", percent: 0.75),
                  MySmallCircularIndicator(
                      title: "PROT", value: "24", percent: 0.8),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: const MyButton(),
      ),
    );
  }
}
