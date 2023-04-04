import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_color.dart';
import '../../../../common/app_strings.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../common/widget/my_behavior.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 513.h,
                decoration: BoxDecoration(
                  color: AppColor.appBarBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.w),
                    bottomRight: Radius.circular(50.w),
                  ),
                ),
                padding: const EdgeInsets.only(top: kToolbarHeight * 0.6),
                alignment: Alignment.topLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    AppText(
                      text: AppStrings.profile,
                      color: AppColor.white,
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.w500,
                      textSize: 48.sp,
                    ),
                  ],
                ),
              ),

              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Padding(
                      // padding: EdgeInsets.fromLTRB(44.w, 0, 44.w, 196.h),
                      padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 196.h),
                      child: Material(
                        shadowColor: AppColor.grey,
                        elevation: 2,
                        borderRadius: BorderRadius.circular(10.sp),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 51.w, vertical: 54.h),
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: AppStrings.name,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text: 'Sourav Mukherjee',
                                color: AppColor.blackTextColor,
                                lineHeight: 1,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              AppText(
                                text: AppStrings.nationality,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text: '6th June, 1985',
                                color: AppColor.blackTextColor,
                                lineHeight: 1.6,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              AppText(
                                text: AppStrings.email,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text: 'sourav.mukherjee@gmail.com',
                                color: AppColor.blackTextColor,
                                lineHeight: 1.6,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              AppText(
                                text: AppStrings.phone,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text: '+ 353 1 376 3957',
                                color: AppColor.blackTextColor,
                                lineHeight: 1.6,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              AppText(
                                text: AppStrings.address,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text:
                                    'C97P+6Q7, Road No. 10, Muppas Panchavati Colony, Manikonda Jagir, Telangana 500089',
                                color: AppColor.blackTextColor,
                                lineHeight: 1.6,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              AppText(
                                text: AppStrings.country,
                                color: AppColor.blackTextColor,
                                maxLines: 1,
                                textAlign: TextAlign.start,
                                textSize: 36.sp,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              AppText(
                                text: 'India',
                                color: AppColor.blackTextColor,
                                lineHeight: 1.6,
                                maxLines: 5,
                                textSize: 42.sp,
                                fontWeight: FontWeight.w500,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 513.h - (305.h / 2),
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              child: ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.circular(300.sp),
                child: CachedNetworkImage(
                  height: 305.h,
                  width: 305.w,
                  imageUrl: "https://cdn.pixabay.com/photo/2014/11/13/06/12/boy-529067_1280.jpg",
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          Positioned(
            top: 513.h + ((305.h / 2) - 90.h),
            left: 90.w,
            child: Container(
              width: Get.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.white,
                  border: Border.all(
                      color: AppColor.profileBorderBackground, width: 2.sp)),
              padding: EdgeInsets.all(24.sp),
              child: SvgPicture.asset(
                AppImages.iconPencil,
                width: 42.sp,
                height: 42.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
