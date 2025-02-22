import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_response_model.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';

part 'admin_delete_category_state.dart';
part 'admin_delete_category_cubit.freezed.dart';
class AdminDeleteCategoryCubit extends Cubit<AdminDeleteCategoryState> {
  AdminDeleteCategoryCubit(this._categoriesRepoImpl)
      : super(const AdminDeleteCategoryState.initial());

  final AdminCategoriesRepoImpl _categoriesRepoImpl;

  Future<void> deleteCategory(
      {required String id,}) async {
    emit(const AdminDeleteCategoryState.loading());
    final response = await _categoriesRepoImpl.deleteCategory(
      deleteCategoryRequest: AdminDeleteCategoryRequestModel(id: id),
    );
    response.when(
      success: (response) {
        emit(
          AdminDeleteCategoryState.success(
            response: response,
          ),
        );
      },
      failure: (error) {
        emit(
          AdminDeleteCategoryState.failure(
            error: error,
          ),
        );
      },
    );
  }
}
