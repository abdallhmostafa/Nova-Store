import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCustomRemoveButton extends StatelessWidget {
  const AdminCustomRemoveButton({
    required this.onPressed,
    this.size,
    super.key,
  });
  final VoidCallback onPressed;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        constraints: BoxConstraints(
          maxHeight: 24.h,
          maxWidth: 24.w,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        onPressed: onPressed,
        icon: Icon(
          color: Colors.white,
          Icons.delete_sweep_rounded,
          size: size ?? 22.w,
        ),
      ),
    );
  }
}
