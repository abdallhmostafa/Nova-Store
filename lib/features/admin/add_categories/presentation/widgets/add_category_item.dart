import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nova_store/core/common/widgets/admin/admin_custom_container.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/constants/app_constant.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/core/themes/app_text_style.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/remove_add_icons_buttons.dart';

class AddCategoryItem extends StatelessWidget {
  const AddCategoryItem({
    required this.title,
    required this.urlImage,
    super.key,
  });

  final String title;
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return AdminCustomContainer(
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextApp(text: title, theme: AppTextStyles.f18BoldWhite),
                const Spacer(),
                const RemoveAddButtons(),
              ],
            ),
          ),
          Flexible(
            child: CachedNetworkImage(
              imageUrl: urlImage,
              fit: BoxFit.fitHeight,
              placeholderFadeInDuration:
                  Duration(milliseconds: AppConstant.fadeInDuration),
              fadeInDuration:
                  Duration(milliseconds: AppConstant.fadeInDuration),
              fadeOutDuration:
                  Duration(milliseconds: AppConstant.fadeInDuration),
              progressIndicatorBuilder: (context, url, progress) => Center(
                child: CircularProgressIndicator(
                  value: progress.progress,
                  color: AppColorsDark.blueDark,
                ),
              ),
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error)),
            ),
          ),
        ],
      ),
    );
  }
}
