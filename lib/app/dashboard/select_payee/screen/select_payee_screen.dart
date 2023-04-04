import 'package:akorn/app/dashboard/select_payee/controller/select_payee_controller.dart';
import 'package:akorn/common/app_color.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:akorn/common/widget/app_button.dart';
import 'package:akorn/common/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widget/app_text_field.dart';

class SelectPayeeScreen extends StatelessWidget {
  SelectPayeeScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final SelectPayeeController _controller =
      Get.isRegistered<SelectPayeeController>()
          ? Get.find<SelectPayeeController>()
          : Get.put(SelectPayeeController());

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
          text: AppStrings.selectPayee,
          color: AppColor.white,
          maxLines: 1,
          textAlign: TextAlign.center,
          textSize: 48.sp,
        ),
      ),
      body: Column(
        children: [
          Material(
            elevation: 1,
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 32.h),
              color: AppColor.white,
              child: AppTextField(
                isShadow: false,
                placeHolder: AppStrings.search,
                controller: _emailController,
                fillColor: AppColor.white,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => _controller.validateEmail(value: value),
              ),
            ),
          ),
          SizedBox(
            height: 48.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 44.w, vertical: 60.h),
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 50.h, horizontal: 46.w),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemSelectPayee(
                          index: index,
                        );
                      }),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          AppButton(
            txt: AppStrings.pay.toUpperCase(),
            width: Get.width,
            margin: EdgeInsets.only(left: 44.w, right: 44.w, bottom: 52.h),
            padding: EdgeInsets.symmetric(vertical: 42.h),
            onPressed: () {},
          ),
          SizedBox(
            height: 103.h,
          ),
        ],
      ),
    );
  }
}

class ItemSelectPayee extends StatelessWidget {
  final int index;

  const ItemSelectPayee({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: index != 0,
          child: SizedBox(
            height: 42.h,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AppText(
                text: 'Vikash Agarwal',
                color: AppColor.bottomBarItemColor,
                maxLines: 2,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w400,
                textSize: 42.sp,
              ),
            ),
            Container(
              height: 64.sp,
              width: 64.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.radioButtonColor,width: 1.sp)
              ),
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
