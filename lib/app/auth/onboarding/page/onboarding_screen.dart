import 'package:akorn/app/auth/onboarding/controller/onboarding_controller.dart';
import 'package:akorn/common/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_strings.dart';
import '../../../../common/widget/app_button.dart';
import '../../../../common/widget/dots_indicator/dots_decorator.dart';
import '../../../../common/widget/dots_indicator/dots_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final OnBoardingController _controller =
      Get.isRegistered<OnBoardingController>()
          ? Get.find<OnBoardingController>()
          : Get.put(OnBoardingController());

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              allowImplicitScrolling: true,
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: (value) {
                _controller.updateCurrentIndex(index: value);
              },
              children: _controller.dataList,
            ),
          ),
          // Positioned.fill(
          //   child: ItemOnBoardingScreen(
          //     item: OnBoardingEntity(
          //         imagePath: AppImages.imgWelcomeToAkorn,
          //         title: AppStrings.welcomeToAkornTitle,
          //         description: AppStrings.welcomeToAkornDescription),
          //   ),
          // ),
          Positioned(
            bottom: 20.h,
            left: 0,
            right: 0,
            child: Obx(() {
              return ItemButtonsOnBoarding(
                currentIndex: _controller.currentIndex.value,
                totalIndex: _controller.dataList.length,
                onNextButtonClick: () {
                  var totalIndex = (_controller.dataList.length - 1);
                  if (_controller.currentIndex.value == totalIndex) {
                    _controller.navigateToRespectiveScreen();
                  }else{
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.linear);
                  }
                },
                onSkipButtonClick: () {
                  _controller.navigateToRespectiveScreen();
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ItemButtonsOnBoarding extends StatelessWidget {
  final int currentIndex;
  final int totalIndex;
  final VoidCallback? onSkipButtonClick;
  final VoidCallback? onNextButtonClick;

  const ItemButtonsOnBoarding({
    super.key,
    required this.currentIndex,
    required this.totalIndex,
    this.onNextButtonClick,
    this.onSkipButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: AppButton(
            txt: AppStrings.skip.toUpperCase(),
            fillColor: AppColor.backgroundColor,
            textColor: AppColor.blackTextColor,
            textAlign: TextAlign.start,
            padding: EdgeInsets.symmetric(vertical: 42.h, horizontal: 66.w),
            onPressed: onSkipButtonClick,
          ),
        ),
        DotsIndicator(
          dotsCount: totalIndex,
          position: currentIndex.toDouble(),
          decorator: const DotsDecorator(
            color: AppColor.inActiveDotsIndicator, // Inactive color
            activeColor: AppColor.buttonFillColor,
          ),
        ),
        Expanded(
          flex: 2,
          child: AppButton(
            txt: _fetchTitle(),
            fillColor: AppColor.backgroundColor,
            textColor: AppColor.buttonFillColor,
            textAlign: TextAlign.end,
            padding: EdgeInsets.symmetric(vertical: 42.h, horizontal: 66.w),
            onPressed: onNextButtonClick,
          ),
        ),
      ],
    );
  }

  _fetchTitle() {
    if (currentIndex == (totalIndex - 1)) {
      return AppStrings.getStarted.toUpperCase();
    }
    return AppStrings.next.toUpperCase();
  }

}
