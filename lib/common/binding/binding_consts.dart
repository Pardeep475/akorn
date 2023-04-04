class BindingConst {
  static final BindingConst _bindingConst = BindingConst._internal();

  factory BindingConst() {
    return _bindingConst;
  }

  BindingConst._internal();

  static const String splashScreenBinding = "SPLASH_SCREEN_BINDING";
  static const String loginScreenBinding = "LOGIN_SCREEN_BINDING";
  static const String onBoardingScreenBinding = "ON_BOARDING_SCREEN_BINDING";
  static const String registerScreenBinding = "REGISTER_SCREEN_BINDING";
  static const String verificationScreenBinding = "VERIFICATION_SCREEN_BINDING";
  static const String emailVerificationScreenBinding = "EMAIL_VERIFICATION_SCREEN_BINDING";
  static const String uploadVisaScreenBinding = "UPLOAD_VISA_SCREEN_BINDING";
  static const String dashboardScreenBinding = "DASHBOARD_SCREEN_BINDING";
  static const String contentScreenBinding = "CONTENT_SCREEN_BINDING";
  static const String profileScreenBinding = "PROFILE_SCREEN_BINDING";



}