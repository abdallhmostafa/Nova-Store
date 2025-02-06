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
          return AnimatedBottomSheetContent(
            child: child,
          );
        },
      ).whenComplete(() => whenComplete?.call());
}

class AnimatedBottomSheetContent extends StatefulWidget {
  const AnimatedBottomSheetContent({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedBottomSheetContentState createState() =>
      _AnimatedBottomSheetContentState();
}

class _AnimatedBottomSheetContentState extends State<AnimatedBottomSheetContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300), // Animation duration
      vsync: this,
    );

    // Define the animation curve
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    // Start the animation when the widget is built
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1), // Start from the bottom
        end: Offset.zero, // End at the current position
      ).animate(_animation),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 16.h,
          left: 16.w,
          right: 16.w,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16.h,
        ),
        child: widget.child,
      ),
    );
  }
}
