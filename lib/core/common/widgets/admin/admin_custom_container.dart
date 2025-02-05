import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';

class AdminCustomContainer extends StatelessWidget {
  const AdminCustomContainer({
    required this.child,
    super.key,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: _boxDecoration(),
      child: child,
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      gradient: LinearGradient(
        colors: [
          AppColorsDark.black1.withValues(alpha: 0.8),
          AppColorsDark.black2.withValues(alpha: 0.8),
        ],
        begin: const Alignment(0.36, 0.27),
        end: const Alignment(0.58, 0.85),
      ),
      boxShadow: [
        BoxShadow(
          color: AppColorsDark.black1.withValues(alpha: 0.3),
          offset: const Offset(0, 4),
          blurRadius: 8,
        ),
        BoxShadow(
          color: AppColorsDark.black2.withValues(alpha: 0.3),
          offset: const Offset(0, 4),
          blurRadius: 2,
        ),
      ],
    );
  }
}
