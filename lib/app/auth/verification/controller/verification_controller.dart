import 'package:akorn/common/routes/route_strings.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  navigateToRespectiveScreen() {
    // RouteString.onBoardingScreen
    Get.toNamed(RouteString.onBoardingScreen);
  }
}
