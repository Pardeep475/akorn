import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_color.dart';
import '../../../../common/app_images.dart';
import '../../../../common/widget/app_button.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController _controller = Get.isRegistered<SplashController>()
      ? Get.find<SplashController>()
      : Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppImages.imgSplashBackground,fit: BoxFit.fitWidth,),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.imgLogo,
                  width: 714.w,
                  height: 176.h,
                ),
                SizedBox(
                  height: 64.h,
                ),
                AppText(
                  text: AppStrings.internationalStudentComingToUK,
                  color: AppColor.white,
                  lineHeight: 1.6,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                ),
                SizedBox(
                  height: 197.h,
                ),
                Container(
                  color: AppColor.backgroundColor,
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.w, vertical: 35.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppButton(
                          txt: AppStrings.openAnAccount,
                          padding: EdgeInsets.symmetric(vertical: 42.h),
                          onPressed: () => _controller.navigateToSignUpScreen(),
                        ),
                      ),
                      SizedBox(
                        width: 40.sp,
                      ),
                      Expanded(
                        child: AppButton(
                          txt: AppStrings.login,
                          fillColor: Colors.transparent,
                          borderColor: AppColor.blackTextColor,
                          textColor: AppColor.blackTextColor,
                          padding: EdgeInsets.symmetric(vertical: 42.h),
                          onPressed: () => _controller.navigateToLoginScreen(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
