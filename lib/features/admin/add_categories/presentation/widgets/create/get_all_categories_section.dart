import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:nova_store/core/app/upload_image/repo/upload_image_repo.dart';
import 'package:nova_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:nova_store/core/common/widgets/custom_button.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/di/dependency_injection.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/admin_create_category_bloc/admin_create_category_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/get_all_categories_bloc/admin_get_all_categories_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/create/create_add_category_bottom_sheet.dart';

class GetAllCategoriesSection extends StatelessWidget {
  const GetAllCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          text: context.translate(LangKeys.getAllCategories),
          theme: context.textStyle.copyWith(fontSize: 18.sp),
        ),
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showCustomBottomSheet(
              context: context,
              backgroundColor: AppColorsDark.blueDark,
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => AdminCreateCategoryBloc(
                      serviceLocator<AdminCategoriesRepoImpl>(),
                    ),
                  ),
                  BlocProvider(
                    create: (context) => UploadImageCubit(
                      serviceLocator<UploadImageRepo>(),
                    ),
                  ),
                ],
                child: const CreateAddCategoryBottomSheet(),
              ),
              whenComplete: () {
                context.read<AdminGetAllCategoriesBloc>().add(
                      const AdminGetAllCategoriesEvent.getAllCategories(
                        refresh: false,
                      ),
                    );
              },
            );
          },
          text: context.translate(LangKeys.add),
          textColor: Colors.white,
          threeRadius: 10,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
          backgroundColor: AppColorsDark.blueDark,
          lastRadius: 10,
        ),
      ],
    );
  }
}
