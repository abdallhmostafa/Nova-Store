import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/styles/fonts/font_wieght_helper.dart';

abstract class AppTextStyles {
  static TextStyle get f14RegularBlack => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWieghtHelper.regular,
        color: Colors.black,
      );
  static TextStyle get f14RegularWhite => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWieghtHelper.regular,
        color: Colors.white,
      );
  static TextStyle get f18BoldWhite => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWieghtHelper.bold,
        color: Colors.white,
      );
  static TextStyle get f20BoldWhite => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWieghtHelper.bold,
        color: Colors.white,
      );
  static TextStyle get f16MediumWhite => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWieghtHelper.medium,
        color: Colors.white,
      );
}
