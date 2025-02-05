import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/bloc/get_categories_number_admin_dashboard_cubit/get_categories_number_admin_dashboard_cubit.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/bloc/get_products_number_admin_dashboard_cubit/get_products_number_admin_dashboard_cubit.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/bloc/get_users_number_admin_dashboard_cubit/get_users_number_admin_dashboard_cubit.dart';
import 'package:nova_store/features/admin/dashboard_page/presentation/widgets/admin_dashboard_list_items.dart';

class DashboardPageBody extends StatelessWidget {
  const DashboardPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      color: context.color.navBarSelectedTab,
      semanticsLabel: context.translate(LangKeys.refresh),
      semanticsValue: context.translate(LangKeys.refresh),
      onRefresh: () async {
        await Future.wait([
          context.read<GetUsersNumberAdminDashboardCubit>().getUsersNumber(),
          context
              .read<GetProductsNumberAdminDashboardCubit>()
              .getProductsNumber(),
          context
              .read<GetCategoriesNumberAdminDashboardCubit>()
              .getCategoriesNumber(),
        ]);
      },
      child: const AdminDashboardListItems(),
    );
  }
}
