import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/common/widgets/admin/admin_custom_container.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/styles/fonts/font_wieght_helper.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/admin_dashboard_categories_number.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/admin_dashboard_products_number.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/admin_dashboard_users_number.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/enum_admin_dashboard_number.dart';

class AdminDashboardItem extends StatelessWidget {
  const AdminDashboardItem({
    required this.title,
    required this.image,
    required this.type,
    super.key,
  });
  final String title;
  final String image;
  final AdminDashboardNumberType type;
  @override
  Widget build(BuildContext context) {
    return AdminCustomContainer(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextApp(
                  theme: context.textStyle.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWieghtHelper.bold,
                  ),
                  text: title,
                ),
                if (type == AdminDashboardNumberType.products)
                  const AdminDashboardProductsNumber()
                else
                  type == AdminDashboardNumberType.categories
                      ? const AdminDashboardCategoriesNumber()
                      : const AdminDashboardUsersNumber(),
              ],
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
