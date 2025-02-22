import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/utils/show_toast.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/admin_delete_category_cubit/admin_delete_category_cubit.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/get_all_categories_bloc/admin_get_all_categories_bloc.dart';

class AdminDeleteCategoryBlocListener extends StatelessWidget {
  const AdminDeleteCategoryBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminDeleteCategoryCubit, AdminDeleteCategoryState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {
            ShowToast.showToastLoading(
              message: context.translate(LangKeys.deletingTheCategory),
              seconds: 2,
            );
          },
          success: (response) {
            ShowToast.showToastSuccess(
              message: context.translate(LangKeys.categoryDeletedSuccessfully),
            );
            context.read<AdminGetAllCategoriesBloc>().add(
                  const AdminGetAllCategoriesEvent.getAllCategories(
                    refresh: false,
                  ),
                );
          },
          failure: (failure) {
            ShowToast.showToastError(
              message: failure.errors?.first.message ?? '',
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
