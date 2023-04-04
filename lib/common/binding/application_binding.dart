import 'package:akorn/app/auth/login/controller/login_controller.dart';
import 'package:akorn/app/auth/onboarding/controller/onboarding_controller.dart';
import 'package:akorn/app/auth/register/controller/register_controller.dart';
import 'package:akorn/app/auth/verification/controller/email_verification_controller.dart';
import 'package:akorn/app/auth/verification/controller/verification_controller.dart';
import 'package:akorn/app/dashboard/content/controller/content_controller.dart';
import 'package:akorn/app/dashboard/controller/dashboard_controller.dart';
import 'package:akorn/app/dashboard/my_account/page/my_account_screen.dart';
import 'package:akorn/app/dashboard/select_payee/controller/select_payee_controller.dart';
import 'package:akorn/app/dashboard/university_fee/controller/university_fee_controller.dart';
import 'package:akorn/app/dashboard/upload_visa/controller/upload_visa_controller.dart';
import 'package:get/get.dart';

import '../../app/auth/splash/controller/splash_controller.dart';
import '../../app/dashboard/profile/controller/profile_controller.dart';
import 'binding_consts.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(),
        tag: BindingConst.splashScreenBinding);
    Get.lazyPut(() => OnBoardingController(),
        tag: BindingConst.onBoardingScreenBinding);
    Get.lazyPut(() => RegisterController(),
        tag: BindingConst.registerScreenBinding);
    Get.lazyPut(() => LoginController(), tag: BindingConst.loginScreenBinding);
    Get.lazyPut(() => VerificationController(),
        tag: BindingConst.verificationScreenBinding);
    Get.lazyPut(() => EmailVerificationController(),
        tag: BindingConst.emailVerificationScreenBinding);
    Get.lazyPut(() => UploadVisaController(),
        tag: BindingConst.uploadVisaScreenBinding);
    Get.lazyPut(() => ProfileController(),
        tag: BindingConst.profileScreenBinding);
    Get.lazyPut(() => DashboardController(),
        tag: BindingConst.dashboardScreenBinding);
    Get.lazyPut(() => ContentController(),
        tag: BindingConst.dashboardScreenBinding);
    Get.lazyPut(() => MyAccountScreen(),
        tag: BindingConst.accountScreenBinding);
    Get.lazyPut(() => SelectPayeeController(),
        tag: BindingConst.selectPayeeScreenBinding);
    Get.lazyPut(() => UniversityFeeController(),
        tag: BindingConst.universityFeeScreenBinding);
  }
}
