import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/styles/assets/app_image_assets.dart';
import 'package:nova_store/core/utils/space.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/admin_dashboard_item.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/enum_admin_dashboard_number.dart';

class AdminDashboardListItems extends StatelessWidget {
  const AdminDashboardListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        AdminDashboardItem(
          title: context.translate(LangKeys.products),
          image: AppImageAssets.productsDrawer,
          type: AdminDashboardNumberType.products,
        ),
        verticalSpace(20),
        AdminDashboardItem(
          title: context.translate(LangKeys.categories),
          image: AppImageAssets.categoriesDrawer,
          type: AdminDashboardNumberType.categories,
        ),
        verticalSpace(20),
        AdminDashboardItem(
          title: context.translate(LangKeys.users),
          image: AppImageAssets.usersDrawer,
          type: AdminDashboardNumberType.users,
        ),
        verticalSpace(20),
      ],
    );
  }
}
