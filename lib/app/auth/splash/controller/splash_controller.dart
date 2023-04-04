import 'package:get/get.dart';
import '../../../../common/local_storage/session_manager.dart';
import '../../../../common/routes/route_strings.dart';
import '../../../../common/utils.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // _navigateToRespectiveScreen();
    Utils.logger.e("on init");
  }

  @override
  void onReady() {
    super.onReady();
    Utils.logger.e("on ready");
  }

  @override
  void onClose() {
    super.onClose();
    Utils.logger.e("on close");
  }

  _navigateToRespectiveScreen() async {
    bool isLogin = await SessionManager.isLogin();

    Get.offAndToNamed(
        isLogin ? RouteString.dashBoardScreen : RouteString.loginScreen);
  }

  navigateToLoginScreen() {
    Get.offAndToNamed(RouteString.loginScreen);
  }

  navigateToSignUpScreen() {
    Get.offAndToNamed(RouteString.registerScreen);
  }
}
