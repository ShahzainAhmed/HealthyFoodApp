import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        height: 60.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.kPrimaryColor,
              AppColors.kOrangeColor,
            ],
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
            child: Text(
          "\$4.99 / Add to Card",
          style: AppTypography.kBold14.copyWith(color: AppColors.kWhiteColor),
        )),
      ),
    );
  }
}
