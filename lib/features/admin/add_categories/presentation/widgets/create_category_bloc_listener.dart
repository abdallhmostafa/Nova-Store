import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/utils/show_toast.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/admin_create_category_bloc/admin_create_category_bloc.dart';

class CreateCategoryBlocListener extends StatelessWidget {
  const CreateCategoryBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminCreateCategoryBloc, AdminCreateCategoryState>(
      listener: (context, state) {
        state.when(
          error: (error) => ShowToast.showToastError(
            message: error.errors?.first.message ?? '',
          ),
          initial: () => const SizedBox.shrink(),
          loading: ShowToast.showToastLoading,
          success: (response) {
            ShowToast.showToastSuccess(
              message: context.translate(LangKeys.categoryCreatedSuccessfully),
            );

            context.pop();
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
