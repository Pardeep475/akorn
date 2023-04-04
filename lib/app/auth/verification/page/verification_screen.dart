import 'package:akorn/app/auth/verification/controller/verification_controller.dart';
import 'package:akorn/common/widget/flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_color.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/widget/app_button.dart';
import '../../../../common/widget/app_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<StatefulWidget> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final VerificationController _controller =
      Get.isRegistered<VerificationController>()
          ? Get.find<VerificationController>()
          : Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200.h,
          ),
          AppText(
            text: AppStrings.createAnAccount,
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
            text: AppStrings.verificationCodeDescription,
            color: AppColor.blackTextColor,
            lineHeight: 1.6,
            maxLines: 5,
            textSize: 42.sp,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 44.w),
          ),
          SizedBox(
            height: 350.h,
          ),
          OtpTextField(
            numberOfFields: 4,
            borderColor: AppColor.blackTextColor,
            showFieldAsBox: true,
            obscureText: true,
            borderWidth: 3.sp,
            onCodeChanged: (String code) {},
            fieldWidth: 181.w,
            cursorColor: AppColor.buttonFillColor,
            focusedBorderColor: AppColor.buttonFillColor,
            textStyle: TextStyle(
              fontSize: 42.sp,
              fontFamily: AppStrings.montserratFontFamily,
              fontWeight: FontWeight.w400,
            ),
            onSubmit: (String verificationCode) {
              _controller.navigateToRespectiveScreen();
            }, // end onSubmit
          ),
          SizedBox(
            height: 119.h,
          ),
          AppText(
            text: AppStrings.resendCodeIn,
            color: AppColor.blackTextColor,
            maxLines: 1,
            textSize: 40.sp,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 116.w),
          ),
          SizedBox(
            height: 170.h,
          ),
          AppButton(
            txt: AppStrings.changePhoneNumber,
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
}
