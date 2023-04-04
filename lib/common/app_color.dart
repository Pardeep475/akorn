import 'dart:ui';

class AppColor {
  static final AppColor _appColor = AppColor._internal();

  factory AppColor() {
    return _appColor;
  }

  AppColor._internal();

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const red = Color(0xFFFF0303);
  static const backgroundColor = Color(0xFFF7F7F7);

  static const loaderColor = Color(0xFFFF0303);
  static const hintColor = Color(0xFF8391A1);
  static const outlineBorderColor = Color(0xFFE8ECF4);
  static const textFieldFillColor = Color(0xFFF7F8F9);
  static const buttonFillColor = Color(0xFFE64B69);
  static const blackTextColor = Color(0xFF272D40);
  static const grey = Color(0xFFCBCBCB);
  static const yellowKnowledge = Color(0xFFFAAF3A);
  static const redKnowledge = Color(0xFFFD4648);
  static const pinkKnowledge = Color(0xFFD479F2);
  static const greenKnowledge = Color(0xFF44CB7E);
  static const darkBlueKnowledge = Color(0xFF23608F);
  static const lightNavyBlue = Color(0xFF004566);
  static const commentBlack = Color(0xFF333333);
  static const commentTextFieldBackgroundColor = Color(0xFFCBCBCB);
  static const black001 = Color(0xFF000100);
  static const onBoardingTitle = Color(0xFF4369D8);
  static const inActiveDotsIndicator = Color(0xFFD2D4D8);
  static const activeDotsIndicator = Color(0xFFD2D4D8);
  static const bottomSheetDesign = Color(0xFFC5C5C5);
  static const appBarBackground = Color(0xFF3F6FE0);
  static const uploadDocumentBackground = Color(0xFFF6F2F3);
  static const disableButtonColor = Color(0xFFB0B0B0);
  static const imagePickerBackground = Color(0xFFF8F8F8);
  static const imagePickerBorderBackground = Color(0xFFC8C8C8);
  static const profileBorderBackground = Color(0xFFA4A4A4);
  static const bottomBarItemColor = Color(0xFF797A81);
  static const darkRed = Color(0xFFD10C0C);
  static const radioButtonColor = Color(0xFF545454);
}
