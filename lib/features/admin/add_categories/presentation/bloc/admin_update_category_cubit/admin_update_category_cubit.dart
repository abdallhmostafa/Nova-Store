import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_response_model.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';

part 'admin_update_category_state.dart';
part 'admin_update_category_cubit.freezed.dart';

class AdminUpdateCategoryCubit extends Cubit<AdminUpdateCategoryState> {
  AdminUpdateCategoryCubit(this.adminCategoriesRepoImpl)
      : super(const AdminUpdateCategoryState.initial());

  final AdminCategoriesRepoImpl adminCategoriesRepoImpl;

  Future<void> updateCategory({
    required AdminUpdateCategoryRequestModel updateCategoryRequest,
  }) async {
    emit(const AdminUpdateCategoryState.loading());
    final result = await adminCategoriesRepoImpl.updateCategory(
      updateCategoryRequest: updateCategoryRequest,
    );
    result.when(
      success: (response) {
        emit(AdminUpdateCategoryState.success(response));
      },
      failure: (error) {
        emit(AdminUpdateCategoryState.error(error));
      },
    );
  }
}
