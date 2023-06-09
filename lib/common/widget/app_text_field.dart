import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';
import '../app_strings.dart';

class AppTextField extends StatelessWidget {
  final String? placeHolder;

  final Widget? suffix;
  final bool obscureText;

  final TextEditingController? controller;

  final String? Function(String?)? validator;

  final bool isEnabled;
  final int minLines;
  final int maxLines;
  final Color fillColor;
  final bool isChangePadding;
  final bool isBorderRequired;
  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;
  final TextInputType? keyboardType;
final bool isShadow;
  const AppTextField({
    Key? key,
    this.placeHolder,
    this.suffix,
    this.obscureText = false,
    this.controller,
    this.isBorderRequired = true,
    this.validator,
    this.minLines = 1,
    this.maxLines = 1,
    this.isEnabled = true,
    this.isChangePadding = false,
    this.fillColor =  AppColor.backgroundColor,
    this.onChanged,
    this.keyboardType,
    this.isShadow = true,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(isShadow){
      return Material(
        elevation: 1.0,
        shadowColor: AppColor.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
        child: TextFormField(
          minLines: minLines,
          maxLines: maxLines,
          controller: controller,
          obscureText: obscureText,
          validator: (value) => validator == null ? null : validator!(value),
          onChanged: (value) => onChanged == null ? null : onChanged!(value),
          onEditingComplete: onEditingComplete,
          onFieldSubmitted: (value) {},
          onSaved: (value) {},
          keyboardType: keyboardType,
          decoration: InputDecoration(
              isDense: true,
              filled: true,
              hintStyle: TextStyle(
                  color: AppColor.hintColor,
                  fontFamily: AppStrings.montserratFontFamily,
                  fontSize: 40.sp),
              border: _border(),
              contentPadding: isChangePadding
                  ? EdgeInsets.symmetric(vertical: 0, horizontal: 10.w)
                  : null,
              disabledBorder: _border(),
              enabledBorder: _border(),
              focusedBorder: _border(),
              errorBorder: _border(),
              focusedErrorBorder: _border(),
              errorStyle: const TextStyle(
                  color: AppColor.red, fontFamily: AppStrings.montserratFontFamily),
              hintText: placeHolder,
              fillColor: fillColor),
        ),
      );
    }
    return TextFormField(
      minLines: minLines,
      maxLines: maxLines,
      controller: controller,
      obscureText: obscureText,
      validator: (value) => validator == null ? null : validator!(value),
      onChanged: (value) => onChanged == null ? null : onChanged!(value),
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: (value) {},
      onSaved: (value) {},
      keyboardType: keyboardType,
      decoration: InputDecoration(
          isDense: true,
          filled: true,
          hintStyle: TextStyle(
              color: AppColor.hintColor,
              fontFamily: AppStrings.montserratFontFamily,
              fontSize: 40.sp),
          border: _border(),
          contentPadding: isChangePadding
              ? EdgeInsets.symmetric(vertical: 0, horizontal: 10.w)
              : null,
          disabledBorder: _border(),
          enabledBorder: _border(),
          focusedBorder: _border(),
          errorBorder: _border(),
          focusedErrorBorder: _border(),
          errorStyle: const TextStyle(
              color: AppColor.red, fontFamily: AppStrings.montserratFontFamily),
          hintText: placeHolder,
          fillColor: fillColor),
    );
  }

  OutlineInputBorder _border() {
    return isBorderRequired
        ? OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
            borderSide: const BorderSide(
              color: AppColor.outlineBorderColor,
            ),
          )
        : OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0.sp)),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          );
  }
}
