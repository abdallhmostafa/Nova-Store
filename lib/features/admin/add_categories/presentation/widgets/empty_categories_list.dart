import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/styles/assets/app_image_assets.dart';
import 'package:nova_store/core/themes/app_text_style.dart';

class EmptyCategoriesList extends StatelessWidget {
  const EmptyCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        Image.asset(
          AppImageAssets.emptyScreen,
          height: 200.h,
        ),
        TextApp(
          text: context.translate(LangKeys.noCategoriesYouCanAddOne),
          theme: AppTextStyles.f18BoldWhite,
        )
      ],
    );
  }
}
