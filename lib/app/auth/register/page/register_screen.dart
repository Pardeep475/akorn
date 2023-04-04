import 'package:akorn/app/auth/register/controller/register_controller.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/app_color.dart';
import '../../../../common/widget/app_button.dart';
import '../../../../common/widget/app_text.dart';
import '../../../../common/widget/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final RegisterController _controller = Get.isRegistered<RegisterController>()
      ? Get.find<RegisterController>()
      : Get.put(RegisterController());

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
            text: AppStrings.createAnAccountDescription,
            color: AppColor.blackTextColor,
            lineHeight: 1.6,
            maxLines: 5,
            textSize: 42.sp,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 116.w),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300.h,
                  ),
                  AppText(
                    text: AppStrings.mobileNo,
                    color: AppColor.blackTextColor,
                    lineHeight: 1.6,
                    maxLines: 5,
                    textSize: 36.sp,
                    textAlign: TextAlign.center,
                    fontFamily: AppStrings.robotoFontFamily,
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                    child: Row(
                      children: [
                         CountryCodePicker(
                           onChanged: print,
                           initialSelection: 'IN',
                           favorite: const ['+91', 'IN'],
                           showCountryOnly: false,
                           showOnlyCountryWhenClosed: false,
                           alignLeft: false,
                           flagWidth: 44.w,
                           showDropDownButton: true,
                           padding: EdgeInsets.zero,

                         ),
                        Expanded(
                          child: AppTextField(
                            placeHolder: AppStrings.enterMobileNumber,
                            controller: _phoneNumberController,
                            keyboardType: TextInputType.phone,
                            validator: (value) =>
                                _controller.validateEmail(value: value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  AppText(
                    text: AppStrings.email,
                    color: AppColor.blackTextColor,
                    lineHeight: 1.6,
                    maxLines: 5,
                    textSize: 36.sp,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppStrings.robotoFontFamily,
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                    child: AppTextField(
                      placeHolder: AppStrings.enterEmailNumber,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) =>
                          _controller.validateEmail(value: value),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          AppButton(
            txt: AppStrings.proceed.toUpperCase(),
            width: Get.width,
            margin: EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
            padding: EdgeInsets.symmetric(vertical: 42.h),
            onPressed: () {
              _controller.navigateToRespectiveScreen();
            },
          ),
        ],
      ),
    );
  }
}
