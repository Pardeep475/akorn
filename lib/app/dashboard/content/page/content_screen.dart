import 'package:akorn/common/app_color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_images.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/widget/app_text.dart';
import '../../../../common/widget/expansion_widget.dart';
import '../../../../common/widget/my_behavior.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 880.h,
                decoration: BoxDecoration(
                  color: AppColor.appBarBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.w),
                    bottomRight: Radius.circular(50.w),
                  ),
                ),
                alignment: Alignment.topLeft,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        AppImages.imgHomeBack,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.colorBurn,
                        color: AppColor.white,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: kToolbarHeight * 0.6,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 44.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: AppStrings.goodMorning,
                                      color: AppColor.white,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w400,
                                      textSize: 36.sp,
                                    ),
                                    AppText(
                                      text: 'Sourav Mukherjeee',
                                      color: AppColor.white,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w400,
                                      textSize: 48.sp,
                                    ),
                                  ],
                                ),
                              ),
                              SvgPicture.asset(
                                AppImages.iconNotification,
                                height: 70.h,
                              ),
                              SizedBox(
                                width: 44.w,
                              ),
                              SizedBox(
                                height: 84.h,
                                width: 84.w,
                                child: ClipRRect(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  borderRadius: BorderRadius.circular(300.sp),
                                  child: CachedNetworkImage(
                                    height: 84.h,
                                    width: 84.w,
                                    imageUrl:
                                        "https://cdn.pixabay.com/photo/2014/11/13/06/12/boy-529067_1280.jpg",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 44.w,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppImages.iconTotalBalance,
                              height: 36.h,
                              width: 48.w,
                            ),
                            SizedBox(
                              width: 38.w,
                            ),
                            AppText(
                              text: AppStrings.totalBalance,
                              color: AppColor.white,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w400,
                              textSize: 42.sp,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        AppText(
                          text: '£5,000.24',
                          color: AppColor.white,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          textSize: 104.sp,
                        ),
                        SizedBox(
                          height: 55.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              text: AppStrings.viewAccountDetails,
                              color: AppColor.white,
                              maxLines: 1,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppStrings.robotoFontFamily,
                              textSize: 36.sp,
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColor.white,
                              size: 34.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                               44.w ,171.h,44.w,0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 24.h, horizontal: 46.w),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: ExpansionWidget(
                                  initiallyExpanded: false,
                                  titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
                                    return InkWell(
                                        onTap: () => toogleFunction(animated: true),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                AppText(
                                                  text: AppStrings.startingLevel.toUpperCase(),
                                                  color: AppColor.blackTextColor,
                                                  maxLines: 1,
                                                  textAlign: TextAlign.center,
                                                  fontFamily: AppStrings.robotoFontFamily,
                                                  fontWeight: FontWeight.w500,
                                                  textSize: 48.sp,
                                                ),
                                                SizedBox(width: 24.w,),
                                                SvgPicture.asset(AppImages.iconSearch,height: 56.h,width: 48.w,),
                                                const Expanded(child:  SizedBox()),
                                                const Icon(Icons.keyboard_arrow_down_sharp,),
                                              ],
                                            ),
                                            SizedBox(height: 30.h,),
                                            AppText(
                                              text: AppStrings.unlockingFullAccessToAkron,
                                              color: AppColor.blackTextColor,
                                              maxLines: 2,
                                              lineHeight: 1.3,
                                              textAlign: TextAlign.start,
                                              textSize: 36.sp,
                                            ),
                                          ],
                                        ));
                                  },
                                  content: const SizedBox()),
                            ),
                          ),
                        ),


                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 44.w, vertical: 60.h),
                          child: AppText(
                            text: 'Cards (2)',
                            color: AppColor.blackTextColor,
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            textSize: 48.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 437.h + 60.h,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              padding: EdgeInsets.only(bottom: 10.h,left: 30.w),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.asset(
                                  AppImages.imgCreditCard,
                                  width: Get.width * 0.75,
                                  height: 437.h,
                                );
                              }),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 44.w, vertical: 60.h),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 24.h, horizontal: 46.w),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AppText(
                                      text: AppStrings.paymentComingSoon,
                                      color: AppColor.blackTextColor,
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      textSize: 36.sp,
                                    ),
                                  ),
                                  Image.asset(AppImages.imgGPay,height: 148.sp,width: 148.sp,),
                                  Image.asset(
                                    AppImages.imgApplePay,
                                    height: 148.sp,
                                    width: 148.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 880.h - (207.h / 2),
            child: Container(
              height: 207.h,
              width: Get.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColor.buttonFillColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.white, width: 15.sp)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: AppColor.white,
                  ),
                  AppText(
                    text: AppStrings.topUp.toUpperCase(),
                    color: AppColor.white,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    fontFamily: AppStrings.robotoFontFamily,
                    fontWeight: FontWeight.w500,
                    textSize: 30.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
