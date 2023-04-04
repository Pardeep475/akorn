import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/app_color.dart';
import '../../../../common/widget/app_text.dart';
import '../controller/onboarding_controller.dart';

class ItemOnBoardingScreen extends StatelessWidget {
  final OnBoardingEntity item;

  const ItemOnBoardingScreen({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          item.imagePath,
          height: 854.h,
        ),
        AppText(
          text: item.title,
          color: AppColor.onBoardingTitle,
          lineHeight: 1.6,
          maxLines: 2,
          textAlign: TextAlign.center,
          textSize: 48.sp,
          fontWeight: FontWeight.w600,
          padding: EdgeInsets.symmetric(horizontal: 116.w),
        ),
        SizedBox(
          height: 91.h,
        ),
        AppText(
          text: item.description,
          color: AppColor.blackTextColor,
          lineHeight: 1.6,
          maxLines: 5,
          textSize: 42.sp,
          textAlign: TextAlign.center,
          padding: EdgeInsets.symmetric(horizontal: 116.w),
        ),
      ],
    );
  }
}
