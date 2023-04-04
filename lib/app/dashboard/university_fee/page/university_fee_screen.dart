import 'package:akorn/app/dashboard/university_fee/controller/university_fee_controller.dart';
import 'package:akorn/common/app_color.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/widget/app_button.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:akorn/common/widget/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UniversityFeeScreen extends StatelessWidget {
  UniversityFeeScreen({super.key});

  final UniversityFeeController _controller =
      Get.isRegistered<UniversityFeeController>()
          ? Get.find<UniversityFeeController>()
          : Get.put(UniversityFeeController());

  final TextEditingController _referenceController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.appBarBackground,
        elevation: 1,
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_outlined,
            color: AppColor.white,
          ),
        ),
        titleSpacing: 0,
        title: AppText(
          text: AppStrings.universityFee,
          color: AppColor.white,
          maxLines: 1,
          textAlign: TextAlign.center,
          textSize: 48.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 44.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42.h,
            ),
            AppText(
              text: AppStrings.from,
              color: AppColor.blackTextColor,
              maxLines: 1,
              textAlign: TextAlign.start,
              textSize: 36.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 42.h,
            ),
            Material(
              color: Colors.transparent,
              elevation: 1,
              borderRadius: BorderRadius.circular(10.sp),
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 46.h, horizontal: 44.w),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'British Pounds (95203112)',
                          color: AppColor.bottomBarItemColor,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w500,
                          textSize: 42.sp,
                        ),
                        SizedBox(height: 15.h,),
                        AppText(
                          text: '£ 5,000.24',
                          color: AppColor.bottomBarItemColor,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          textSize: 40.sp,
                        ),
                      ],
                    ),

                    const Expanded(child:  SizedBox()),
                    const Icon(Icons.keyboard_arrow_down_sharp,color: AppColor.bottomBarItemColor,),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 74.h,
            ),
            AppText(
              text: AppStrings.university,
              color: AppColor.blackTextColor,
              maxLines: 1,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w500,
              textSize: 36.sp,
            ),
            SizedBox(
              height: 42.h,
            ),
            AppText(
              text: 'University of Greenwich',
              color: AppColor.blackTextColor,
              lineHeight: 1,
              maxLines: 5,
              textSize: 42.sp,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 74.h,
            ),
            AppText(
              text: AppStrings.reference,
              color: AppColor.blackTextColor,
              maxLines: 1,
              textAlign: TextAlign.start,
              textSize: 36.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 42.h,
            ),
            AppTextField(
              isShadow: false,
              placeHolder: AppStrings.reference,
              controller: _referenceController,
              fillColor: AppColor.white,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => _controller.validateEmail(value: value),
            ),
            SizedBox(
              height: 74.h,
            ),
            AppText(
              text: AppStrings.amount,
              color: AppColor.blackTextColor,
              maxLines: 1,
              textAlign: TextAlign.start,
              textSize: 36.sp,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 42.h,
            ),
            AppTextField(
              isShadow: false,
              placeHolder: AppStrings.amount,
              controller: _amountController,
              fillColor: AppColor.white,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => _controller.validateEmail(value: value),
            ),



            SizedBox(
              height: 60.h,
            ),
            AppButton(
              txt: AppStrings.pay.toUpperCase(),
              width: Get.width,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.symmetric(vertical: 42.h),
              onPressed: () {},
            ),
            SizedBox(
              height: 103.h,
            ),
          ],
        ),
      ),
    );
  }
}
