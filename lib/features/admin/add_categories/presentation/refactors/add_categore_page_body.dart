import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/bloc/admin_get_all_categories_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/refactors/all_categories_bloc_builder_section.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/create/get_all_categories_section.dart';

class AddCategorePageBody extends StatelessWidget {
  const AddCategorePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          const GetAllCategoriesSection(),
          Expanded(
            child: RefreshIndicator.adaptive(
              onRefresh: () async {
                context.read<AdminGetAllCategoriesBloc>().add(
                      const AdminGetAllCategoriesEvent.getAllCategories(),
                    );
              },
              backgroundColor: Colors.white,
              color: AppColorsDark.blueDark,
              child: const AllCategoriesBlocBuilderSection(),
            ),
          ),
        ],
      ),
    );
  }
}
