import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_reponse_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';

part 'admin_create_category_event.dart';
part 'admin_create_category_state.dart';
part 'admin_create_category_bloc.freezed.dart';

class AdminCreateCategoryBloc
    extends Bloc<AdminCreateCategoryEvent, AdminCreateCategoryState> {
  AdminCreateCategoryBloc(this.adminCategoriesRepoImpl)
      : super(const AdminCreateCategoryState.initial()) {
    on<AdminCreateCategoryEvent>(_createCategory);
  }

  final AdminCategoriesRepoImpl adminCategoriesRepoImpl;
  FutureOr<void> _createCategory(
    AdminCreateCategoryEvent event,
    Emitter<AdminCreateCategoryState> emit,
  ) async {
    emit(const AdminCreateCategoryState.loading());
    final result = await adminCategoriesRepoImpl.createCategory(
      createCategoryRequest: event.createCategoryRequest,
    );
    result.when(
      success: (response) {
        emit(
          AdminCreateCategoryState.success(
            response: response,
          ),
        );
      },
      failure: (error) {
        emit(
          AdminCreateCategoryState.error(
            error: error,
          ),
        );
      },
    );
  }
}
