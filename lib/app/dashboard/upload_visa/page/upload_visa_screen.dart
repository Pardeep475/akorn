import 'package:akorn/common/app_color.dart';
import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/widget/app_button.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UploadVisaScreen extends StatefulWidget {
  const UploadVisaScreen({super.key});

  @override
  State<StatefulWidget> createState() => _UploadVisaScreenState();
}

class _UploadVisaScreenState extends State<UploadVisaScreen> {
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
        actions: [
          SvgPicture.asset(AppImages.iconNotification,height: 70.h,),

          SizedBox(
            width: 44.w,
          ),
          Container(
            height: 84.h,
            width: 84.w,
            padding: EdgeInsets.symmetric(vertical: 35.h),
            child: ClipRRect(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(300.sp),
              child: CachedNetworkImage(
                height: 84.h,
                width: 84.w,
                imageUrl: "https://cdn.pixabay.com/photo/2014/11/13/06/12/boy-529067_1280.jpg",
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(
            width: 44.w,
          ),
        ],
        titleSpacing: 0,
        title: AppText(
          text: AppStrings.uploadVisa,
          color: AppColor.white,
          maxLines: 1,
          textAlign: TextAlign.center,
          textSize: 48.sp,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 114.h,
          ),
          AppText(
            text: AppStrings.uploadVisaDescription,
            color: AppColor.blackTextColor,
            lineHeight: 1.6,
            maxLines: 5,
            textSize: 42.sp,
            textAlign: TextAlign.center,
            padding: EdgeInsets.symmetric(horizontal: 44.w),
          ),
          SizedBox(
            height: 130.h,
          ),
          Image.asset(
            AppImages.imgFolder,
            width: 495.w,
            height: 368.h,
          ),
          SizedBox(
            height: 200.h,
          ),
          GestureDetector(
            onTap: () {
              _showBottomSheet();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.uploadDocumentBackground,
                borderRadius: BorderRadius.circular(30.sp),
                border: Border.all(color: AppColor.buttonFillColor),
              ),
              padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 88.w),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.imgUpload,
                    width: 144.w,
                    height: 144.h,
                  ),
                  SizedBox(
                    height: 57.h,
                  ),
                  AppText(
                    text: AppStrings.uploadVisa,
                    color: AppColor.buttonFillColor,
                    textSize: 48.sp,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AppText(
                    text: AppStrings.uploadDocumentType,
                    color: AppColor.blackTextColor,
                    maxLines: 1,
                    textSize: 36.sp,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppButton(
                  txt: AppStrings.upload.toUpperCase(),
                  width: Get.width,
                  textColor: AppColor.white,
                  fillColor: AppColor.disableButtonColor,
                  margin:
                      EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
                  padding: EdgeInsets.symmetric(vertical: 42.h),
                  onPressed: () {},
                ),
              ],
            ),
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
              margin: EdgeInsets.only(top: 39.h, bottom: 65.h),
              decoration: BoxDecoration(
                color: AppColor.bottomSheetDesign,
                borderRadius: BorderRadius.circular(20.sp),
              ),
            ),

            AppText(
              text: AppStrings.uploadAFile,
              color: AppColor.blackTextColor,
              lineHeight: 1.6,
              maxLines: 5,
              fontWeight: FontWeight.w500,
              textSize: 48.sp,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 90.h,
            ),
            Row(
              children: [
                SizedBox(width: 44.w,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.imagePickerBackground,
                        borderRadius: BorderRadius.circular(30.sp),
                        border: Border.all(color: AppColor.imagePickerBorderBackground),
                      ),
                      padding:
                          EdgeInsets.only(bottom: 35.h,top: 62.h),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppImages.iconTakePhoto,
                            width: 104.w,
                            height: 104.h,
                          ),
                          SizedBox(
                            height: 57.h,
                          ),
                          AppText(
                            text: AppStrings.takePhoto,
                            color: AppColor.blackTextColor,
                            textSize: 48.sp,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 87.w,),
                Expanded(
                  child: GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.imagePickerBackground,
                        borderRadius: BorderRadius.circular(30.sp),
                        border: Border.all(color: AppColor.imagePickerBorderBackground),
                      ),
                      padding:
                      EdgeInsets.only(bottom: 35.h,top: 62.h),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            AppImages.imgChooseFile,
                            width: 104.w,
                            height: 104.h,
                          ),
                          SizedBox(
                            height: 57.h,
                          ),
                          AppText(
                            text: AppStrings.chooseFile,
                            color: AppColor.blackTextColor,
                            textSize: 48.sp,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 44.w,),
              ],
            ),
            SizedBox(
              height: 82.h,
            ),
            AppButton(
              txt: AppStrings.cancel.toUpperCase(),
              width: Get.width,
              margin: EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
              padding: EdgeInsets.symmetric(vertical: 42.h),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
