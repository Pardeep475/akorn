import 'package:akorn/app/dashboard/content/page/content_screen.dart';
import 'package:akorn/app/dashboard/controller/dashboard_controller.dart';
import 'package:akorn/app/dashboard/profile/page/profile_screen.dart';
import 'package:akorn/app/dashboard/upload_visa/page/upload_visa_screen.dart';
import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../common/app_color.dart';
import '../../../common/widget/app_text.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final DashboardController _controller =
      Get.isRegistered<DashboardController>()
          ? Get.find<DashboardController>()
          : Get.put(DashboardController());

  static const List<Widget> _widgetOptions = <Widget>[
    ContentScreen(),
    ContentScreen(),
    UploadVisaScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    _controller.updateSelectedIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return _widgetOptions.elementAt(_controller.selectedIndex.value);
      }),
      bottomNavigationBar: _buildMyNavBar(context),
    );
  }

  Widget _buildMyNavBar(BuildContext context) {
    return Material(
      color: AppColor.white,
      elevation: 5,
      child: Container(
        color: AppColor.white,
        height: 148.h,
        alignment: Alignment.center,
        child: Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ItemBottomBar(
                  title: AppStrings.dashboard,
                  isSelected: _controller.selectedIndex.value == 0,
                  onPressed: () => _onItemTapped(0),
                  imagePath: AppImages.iconDashboard,
                ),
              ),
              Expanded(
                child: ItemBottomBar(
                  title: AppStrings.transfers,
                  isSelected: _controller.selectedIndex.value == 1,
                  onPressed: () => _onItemTapped(1),
                  imagePath: AppImages.iconTransfers,
                ),
              ),
              Expanded(
                child: ItemBottomBar(
                  title: AppStrings.payments,
                  isSelected: _controller.selectedIndex.value == 2,
                  onPressed: () => _onItemTapped(2),
                  imagePath: AppImages.iconPayments,
                ),
              ),
              Expanded(
                child: ItemBottomBar(
                  title: AppStrings.myAccount,
                  isSelected: _controller.selectedIndex.value == 3,
                  onPressed: () => _onItemTapped(3),
                  imagePath: AppImages.iconMyAccount,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class ItemBottomBar extends StatelessWidget {
  final String title;
  final bool isSelected;
  final String imagePath;
  final VoidCallback onPressed;

  const ItemBottomBar(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.imagePath,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.white54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              height: 60.sp,
              width: 60.sp,
              color: isSelected
                  ? AppColor.buttonFillColor
                  : AppColor.bottomBarItemColor,
            ),
            SizedBox(
              height: 16.h,
            ),
            AppText(
              text: title.toUpperCase(),
              textSize: 30.sp,
              fontWeight: FontWeight.w500,
              fontFamily: AppStrings.robotoFontFamily,
              color: isSelected
                  ? AppColor.buttonFillColor
                  : AppColor.bottomBarItemColor,
            )
          ],
        ),
      ),
    );
  }
}
