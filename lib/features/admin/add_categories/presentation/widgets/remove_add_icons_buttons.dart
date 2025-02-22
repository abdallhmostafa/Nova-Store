import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/admin_delete_category_cubit/admin_delete_category_cubit.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/admin_custom_remove_button.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/create/create_add_category_bottom_sheet.dart';

class RemoveAddButtons extends StatelessWidget {
  const RemoveAddButtons({
    required this.id,
    super.key,
  });
  final String id;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20.w,
      children: [
        AdminCustomRemoveButton(
          onPressed: () {
            context.read<AdminDeleteCategoryCubit>().deleteCategory(
                  id: id,
                );
          },
        ),
        DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColorsDark.blueDark,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            visualDensity: VisualDensity.compact,
            constraints: BoxConstraints(
              maxHeight: 24.h,
              maxWidth: 24.w,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {
              CustomBottomSheet.showCustomBottomSheet(
                context: context,
                backgroundColor: AppColorsDark.blueDark,
                child: const CreateAddCategoryBottomSheet(
                  isEdit: true,
                ),
                whenComplete: () {},
              );
            },
            color: Colors.white,
            icon: Icon(Icons.edit_sharp, size: 22.w),
          ),
        ),
      ],
    );
  }
}
