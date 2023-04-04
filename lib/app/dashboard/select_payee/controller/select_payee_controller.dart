import 'package:akorn/common/app_strings.dart';
import 'package:get/get.dart';

class SelectPayeeController extends GetxController {
  String? validateEmail({required String? value}) {
    if (value == null || value.isEmpty) {
      return AppStrings.usernameIsRequired;
    }
    return null;
  }
}