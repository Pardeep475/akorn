import 'package:akorn/common/app_color.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCircularButtonOuterText extends StatelessWidget{
  final String imgPath;
  final String title;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const ItemCircularButtonOuterText(
      {super.key,
        required this.imgPath,
        required this.title,
        this.width,
        this.height,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 167.h,
            width: 167.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColor.buttonFillColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.white, width: 15.sp)),
            child: SvgPicture.asset(
              imgPath,
              height: height ?? 70.sp,
              width: width ?? 70.sp,
              color: AppColor.white,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        AppText(
          text: title,
          color: AppColor.blackTextColor,
          maxLines: 1,
          textAlign: TextAlign.center,
          fontFamily: AppStrings.robotoFontFamily,
          fontWeight: FontWeight.w500,
          textSize: 36.sp,
        ),
      ],
    );
  }
}