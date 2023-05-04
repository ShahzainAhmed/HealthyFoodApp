import 'package:flutter/material.dart';
import 'package:untitled/app/data/constants/app_colors.dart';
import 'package:untitled/app/data/constants/app_typography.dart';

class CustomColumnInfor extends StatelessWidget {
  final String heading;
  final String value;
  const CustomColumnInfor(
      {super.key, required this.heading, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppTypography.kMedium20
              .copyWith(color: AppColors.kWhiteColor, letterSpacing: 2),
        ),
        Text(
          heading,
          style: AppTypography.kLight12.copyWith(color: AppColors.kGreyColor),
        )
      ],
    );
  }
}

class CustomColumn2 extends StatelessWidget {
  final String heading;
  final String value;
  const CustomColumn2({super.key, required this.heading, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppTypography.kMedium12.copyWith(color: AppColors.kWhiteColor),
        ),
        Text(
          heading,
          style: AppTypography.kMedium10.copyWith(color: AppColors.kGreyColor),
        ),
      ],
    );
  }
}
