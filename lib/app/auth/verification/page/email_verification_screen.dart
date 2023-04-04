import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_color.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/widget/app_text.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
          ),
          AppText(
            text: AppStrings.emailVerification,
            color: AppColor.onBoardingTitle,
            maxLines: 2,
            textAlign: TextAlign.center,
            textSize: 60.sp,
            fontWeight: FontWeight.w600,
            padding: EdgeInsets.symmetric(horizontal: 116.w),
          ),
          SizedBox(
            height: 62.h,
          ),
          AppText(
            text: AppStrings.emailVerificationDescription,
            color: AppColor.blackTextColor,
            lineHeight: 1.6,
            maxLines: 5,
            textSize: 42.sp,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 44.w),
          ),
          SizedBox(
            height: 180.h,
          ),
          AppButton(
            txt: AppStrings.goToYourMailApp.toUpperCase(),
            width: Get.width,
            margin: EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
            padding: EdgeInsets.symmetric(vertical: 42.h),
            onPressed: () {
              _showBottomSheet();
            },
          ),
          SizedBox(
            height: 300.h,
          ),
          AppButton(
            txt: AppStrings.orEnterTheVerificationCodeInTheEmail,
            fillColor: Colors.transparent,
            textColor: AppColor.buttonFillColor,
            fontWeight: FontWeight.w600,
            padding: EdgeInsets.symmetric(vertical: 36.h),
            onPressed: () {},
          ),
          SizedBox(
            height: 100.h,
          ),
          AppButton(
            txt: AppStrings.changeYourEmailAddress,
            fillColor: Colors.transparent,
            textColor: AppColor.blackTextColor,
            fontWeight: FontWeight.w600,
            padding: EdgeInsets.symmetric(vertical: 36.h),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _showBottomSheet() {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(44.sp),
              topRight: Radius.circular(44.sp)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 360.w,
              height: 9.h,
              margin: EdgeInsets.only(top: 39.h,bottom: 130.h),
              decoration: BoxDecoration(
                color: AppColor.bottomSheetDesign,
                borderRadius: BorderRadius.circular(20.sp),
              ),
            ),
            SvgPicture.asset(AppImages.iconSuccess,height: 200.sp,width: 200.sp,),
            SizedBox(height: 61.h,),
            AppText(
              text: AppStrings.phoneNumberVerified,
              color: AppColor.blackTextColor,
              lineHeight: 1.6,
              maxLines: 5,
              fontWeight: FontWeight.w500,
              textSize: 48.sp,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 133.h,),
            AppButton(
              txt: AppStrings.proceed.toUpperCase(),
              width: Get.width,
              margin: EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
              padding: EdgeInsets.symmetric(vertical: 42.h),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
