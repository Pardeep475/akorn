import 'package:akorn/app/dashboard/my_account/controller/my_account_controller.dart';
import 'package:akorn/common/app_color.dart';
import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/routes/route_strings.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:akorn/common/widget/item_circular_button_outer_text.dart';
import 'package:akorn/common/widget/my_behavior.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyAccountScreen extends StatelessWidget {
  MyAccountScreen({super.key});

  final MyAccountController _controller =
      Get.isRegistered<MyAccountController>()
          ? Get.find<MyAccountController>()
          : Get.put(MyAccountController());

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
                                child: AppText(
                                  text: AppStrings.myAccount,
                                  color: AppColor.white,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.w400,
                                  textSize: 48.sp,
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
                        AppText(
                          text: '£5,000.24',
                          color: AppColor.white,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          textSize: 104.sp,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        AppText(
                          text: AppStrings.currentAccount,
                          color: AppColor.white,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400,
                          textSize: 42.sp,
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                        AppText(
                          text: '12345678 | 04 - 02 - 56',
                          color: AppColor.white,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.w400,
                          textSize: 36.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 162.h,
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 44.w, vertical: 60.h),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 50.h, horizontal: 46.w),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AppImages.iconBalanceChart,
                                    height: 114.sp,
                                    width: 114.sp,
                                  ),
                                  SizedBox(
                                    width: 44.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        AppText(
                                          text: AppStrings.balanceChart,
                                          color: AppColor.blackTextColor,
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          fontWeight: FontWeight.w500,
                                          textSize: 48.sp,
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        AppText(
                                          text: AppStrings.spentThisMonth,
                                          color: AppColor.disableButtonColor,
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          textSize: 36.sp,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 44.w,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: AppColor.bottomBarItemColor,
                                    size: 34.sp,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          // padding: EdgeInsets.fromLTRB(44.w, 0, 44.w, 196.h),
                          padding: EdgeInsets.fromLTRB(44.w, 0, 44.w, 60.h),
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
                                  Row(
                                    children: [
                                      AppText(
                                        text: AppStrings.transactions
                                            .toUpperCase(),
                                        color: AppColor.blackTextColor,
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        fontWeight: FontWeight.w500,
                                        textSize: 48.sp,
                                      ),
                                      const Expanded(child: SizedBox.shrink()),
                                      AppText(
                                        text: AppStrings.seeALL,
                                        color: AppColor.appBarBackground,
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        fontFamily: AppStrings.robotoFontFamily,
                                        fontWeight: FontWeight.w600,
                                        textSize: 36.sp,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
                                  Divider(
                                    height: 1.sp,
                                    color: AppColor.disableButtonColor,
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      padding: EdgeInsets.zero,
                                      itemCount: 5,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return ItemTransactions(
                                          index: index,
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          // padding: EdgeInsets.fromLTRB(44.w, 0, 44.w, 196.h),
                          padding: EdgeInsets.fromLTRB(44.w, 0, 44.w, 60.h),
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
                                  Row(
                                    children: [
                                      AppText(
                                        text: AppStrings.accountDetails
                                            .toUpperCase(),
                                        color: AppColor.blackTextColor,
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        fontWeight: FontWeight.w500,
                                        textSize: 48.sp,
                                      ),
                                      const Expanded(child: SizedBox.shrink()),
                                      SvgPicture.asset(
                                        AppImages.iconShare,
                                        height: 30.sp,
                                        width: 30.sp,
                                      ),
                                      SizedBox(
                                        width: 16.sp,
                                      ),
                                      AppText(
                                        text: AppStrings.share.toUpperCase(),
                                        color: AppColor.appBarBackground,
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        fontFamily: AppStrings.robotoFontFamily,
                                        fontWeight: FontWeight.w600,
                                        textSize: 36.sp,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
                                  Divider(
                                    height: 1.sp,
                                    color: AppColor.disableButtonColor,
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 880.h - (207.h / 2),
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ItemCircularButtonOuterText(
                  title: AppStrings.pay,
                  imgPath: AppImages.iconPayments,
                  onPressed: () {
                    Get.toNamed(RouteString.selectPayeeScreen);
                  },
                  width: 55.sp,
                  height: 55.sp,
                ),
                ItemCircularButtonOuterText(
                  title: AppStrings.transfar,
                  imgPath: AppImages.iconTransfers,
                  onPressed: () {
                    Get.toNamed(RouteString.universityFeeScreen);
                  },
                ),
                ItemCircularButtonOuterText(
                  title: AppStrings.settings,
                  imgPath: AppImages.iconSettings,
                  onPressed: () {
                    Get.toNamed(RouteString.profileScreen);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemTransactions extends StatelessWidget {
  final int index;

  const ItemTransactions({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 42.h,
        ),
        Row(
          children: [
            SvgPicture.asset(
              AppImages.iconBalanceChart,
              height: 114.sp,
              width: 114.sp,
            ),
            SizedBox(
              width: 44.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: 'My account',
                    color: AppColor.blackTextColor,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    fontWeight: FontWeight.w500,
                    textSize: 42.sp,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  AppText(
                    text: '12:02',
                    color: AppColor.disableButtonColor,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    textSize: 36.sp,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 44.w,
            ),
            AppText(
              text: '- £500.00',
              color: AppColor.darkRed,
              maxLines: 2,
              textAlign: TextAlign.start,
              fontWeight: FontWeight.w500,
              textSize: 42.sp,
            ),
          ],
        ),
        Visibility(
          visible: index != 4,
          child: SizedBox(
            height: 42.h,
          ),
        ),
        Visibility(
          visible: index != 4,
          child: Divider(
            height: 1.sp,
            color: AppColor.disableButtonColor,
          ),
        ),
      ],
    );
  }
}
