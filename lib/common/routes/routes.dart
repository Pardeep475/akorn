import 'package:akorn/app/auth/login/page/login_screen.dart';
import 'package:akorn/app/auth/onboarding/page/onboarding_screen.dart';
import 'package:akorn/app/auth/register/page/register_screen.dart';
import 'package:akorn/app/auth/verification/page/email_verification_screen.dart';
import 'package:akorn/app/auth/verification/page/verification_screen.dart';
import 'package:akorn/app/dashboard/content/page/content_screen.dart';
import 'package:akorn/app/dashboard/page/dashboard_screen.dart';
import 'package:akorn/app/dashboard/select_payee/screen/select_payee_screen.dart';
import 'package:akorn/app/dashboard/university_fee/page/university_fee_screen.dart';
import 'package:akorn/app/dashboard/upload_visa/page/upload_visa_screen.dart';
import 'package:akorn/common/routes/route_strings.dart';
import 'package:get/get.dart';

import '../../app/auth/splash/page/splash_screen.dart';
import '../../app/dashboard/profile/page/profile_screen.dart';

class Routes {
  static List<GetPage>? generateRoute() {
    return [
      GetPage(
        name: RouteString.splashScreen,
        page: () => SplashScreen(),
      ),
      GetPage(
        name: RouteString.onBoardingScreen,
        page: () => const OnBoardingScreen(),
      ),
      GetPage(
        name: RouteString.registerScreen,
        page: () => const RegisterScreen(),
      ),
      GetPage(
        name: RouteString.loginScreen,
        page: () => const LoginScreen(),
      ),
      GetPage(
        name: RouteString.verificationScreen,
        page: () => const VerificationScreen(),
      ),
      GetPage(
        name: RouteString.emailVerificationScreen,
        page: () => const EmailVerificationScreen(),
      ),
      GetPage(
        name: RouteString.uploadVisaScreen,
        page: () => const UploadVisaScreen(),
      ),
      GetPage(
        name: RouteString.profileScreen,
        page: () => ProfileScreen(),
      ),
      GetPage(
        name: RouteString.dashBoardScreen,
        page: () => DashboardScreen(),
      ),
      GetPage(
        name: RouteString.contentScreen,
        page: () => const ContentScreen(),
      ),
      GetPage(
        name: RouteString.selectPayeeScreen,
        page: () => SelectPayeeScreen(),
      ),
      GetPage(
        name: RouteString.universityFeeScreen,
        page: () => UniversityFeeScreen(),
      ),
    ];
  }
}
