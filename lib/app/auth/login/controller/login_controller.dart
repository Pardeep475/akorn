import 'package:akorn/common/routes/route_strings.dart';
import 'package:get/get.dart';

import '../../../../common/app_strings.dart';

class LoginController extends GetxController {
  String? validatePhoneNumber({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStrings.phoneNumberIsRequired;
    }
    return null;
  }

  String? validateEmail({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStrings.usernameIsRequired;
    }
    return null;
  }

  navigateToRespectiveScreen() {
    Get.toNamed(RouteString.verificationScreen);
  }
}
