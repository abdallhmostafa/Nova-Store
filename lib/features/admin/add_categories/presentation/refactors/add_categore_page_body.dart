import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
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
              onRefresh: () async {},
              backgroundColor: Colors.white,
              color: AppColorsDark.blueDark,
              child: ListView.separated(
                padding: EdgeInsets.zero,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (context, index) => const AddCategoryItem(
                  title: 'Category 1',
                  urlImage:
                      'https://images.unsplash.com/photo-1542744095-291d1f67b221?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 8,
              ),
            ),
          )
        ],
      ),
    );
  }
}
