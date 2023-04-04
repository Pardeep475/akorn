import 'package:akorn/common/app_images.dart';
import 'package:akorn/common/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../common/routes/route_strings.dart';
import '../widget/item_onboarding_screen.dart';

class OnBoardingController extends GetxController {
  RxList<Widget> dataList = RxList();
  var currentIndex = 0.obs;

  @override
  void onInit() {
    dataList.clear();
    dataList.addAll(OnBoardingRepository.getOnBoardingData());
    super.onInit();
  }

  updateCurrentIndex({required int index}) {
    currentIndex.value = index;
  }

  navigateToRespectiveScreen() {
    Get.offAndToNamed(RouteString.dashBoardScreen);
  }
}

class OnBoardingRepository {
  static List<Widget> getOnBoardingData() {
    return [
      ItemOnBoardingScreen(
        item: OnBoardingEntity(
            imagePath: AppImages.imgWelcomeToAkorn,
            title: AppStrings.welcomeToAkornTitle,
            description: AppStrings.welcomeToAkornDescription),
      ),
      ItemOnBoardingScreen(
        item: OnBoardingEntity(
            imagePath: AppImages.imgOpenAnAccount,
            title: AppStrings.openAnAccountTitle,
            description: AppStrings.openAnAccountDescription),
      ),
      ItemOnBoardingScreen(
        item: OnBoardingEntity(
            imagePath: AppImages.imgTransferMoneyIn,
            title: AppStrings.transferMoneyInTitle,
            description: AppStrings.transferMoneyInDescription),
      ),
      ItemOnBoardingScreen(
        item: OnBoardingEntity(
            imagePath: AppImages.imgUnlockYourAccount,
            title: AppStrings.unlockYourAccountTitle,
            description: AppStrings.unlockYourAccountDescription),
      ),
    ];
  }
}

class OnBoardingEntity {
  String imagePath;
  String title;
  String description;

  OnBoardingEntity(
      {required this.imagePath,
      required this.title,
      required this.description});
}
