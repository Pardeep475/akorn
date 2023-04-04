class RouteString {
  static final RouteString _routeString = RouteString._internal();

  factory RouteString() {
    return _routeString;
  }

  RouteString._internal();

  static const String splashScreen = "/SPLASH_SCREEN";
  static const String loginScreen = "/LOGIN_SCREEN";
  static const String registerScreen = "/SIGN_UP_SCREEN";
  static const String onBoardingScreen = "/ON_BOARDING_SCREEN";
  static const String verificationScreen = "/VERIFICATION_SCREEN";
  static const String emailVerificationScreen = "/EMAIL_VERIFICATION_SCREEN";
  static const String dashBoardScreen = "/DASHBOARD_SCREEN";
  static const String forgotPasswordScreen = "/FORGOT_PASSWORD_SCREEN";
  static const String uploadVisaScreen = "/UPLOAD_VISA_SCREEN";
  static const String profileScreen = "/PROFILE_SCREEN";
  static const String contentScreen = "/CONTENT_SCREEN";

}
