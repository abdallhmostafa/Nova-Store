import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/common/loading/loading_shimmer.dart';
import 'package:nova_store/core/common/widgets/admin/admin_custom_container.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/constants/app_constant.dart';
import 'package:nova_store/core/themes/app_text_style.dart';
import 'package:nova_store/core/utils/func/image_cache_manager.dart';
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
            flex: 3,
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
            flex: 2,
            child: _cachedNetworkImage(),
          ),
        ],
      ),
    );
  }

  CachedNetworkImage _cachedNetworkImage() {
    return CachedNetworkImage(
      cacheManager: cacheManager,
      height: 120.h,
      width: double.infinity,
      imageUrl: urlImage.isNotEmpty
          ? urlImage
          : 'https://image.pngaaa.com/13/1887013-middle.png',
      fit: BoxFit.cover,
      useOldImageOnUrlChange: true,

      placeholder: (context, url) => const Center(child: LoadingShimmer()),
      placeholderFadeInDuration:
          Duration(milliseconds: AppConstant.fadeInDuration),
      fadeInDuration: Duration(milliseconds: AppConstant.fadeInDuration),
      fadeOutDuration: Duration(milliseconds: AppConstant.fadeInDuration),
      // progressIndicatorBuilder: (context, url, progress) =>
      //      Center(
      //   child: CircularProgressIndicator(
      //     color: AppColorsDark.blueDark,
      //     value: progress.progress,
      //   ),
      // ),
      errorWidget: (context, url, error) =>
          const Center(child: Icon(Icons.error)),
    );
  }
}
