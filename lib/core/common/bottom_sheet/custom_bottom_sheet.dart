import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';

class CustomBottomSheet {
  static Future<void> showCustomBottomSheet({
    required BuildContext context,
    required Widget child,
    Color? backgroundColor,
    VoidCallback? whenComplete,
  }) =>
      showModalBottomSheet<dynamic>(
        context: context,
        backgroundColor: backgroundColor ?? AppColorsDark.blueDark,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
              top: 16.h,
              left: 16.w,
              right: 16.w,
              bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
            ),
            child: child,
          );
        },
      ).whenComplete(() => whenComplete?.call());
}
