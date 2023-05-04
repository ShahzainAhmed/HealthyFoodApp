import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/data/constants/app_assets.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';
import 'package:untitled/app/modules/widgets/circular_indicator.dart';
import '../widgets/custom_column_infor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        extendBody: true,
        appBar: AppBar(
          titleSpacing: 20,
          title: Text(
            "Hello Jennifer",
            style: AppTypography.kBold20,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: CircleAvatar(
                backgroundColor: AppColors.kTransparentColor,
                backgroundImage: AssetImage(AppAssets.kAvatar),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              const MyCircularIndicator(),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomColumnInfor(heading: "CONSUMED", value: "1383"),
                  CustomColumnInfor(heading: "BURNED", value: "471"),
                  CustomColumnInfor(heading: "NET", value: "912"),
                ],
              ),
              SizedBox(height: 60.h),
              Text(
                "Popular",
                style: AppTypography.kBold18
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              SizedBox(height: 20.h),
              Container(
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: AppColors.kDarkGrey,
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
