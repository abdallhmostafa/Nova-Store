import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';

part 'admin_get_all_categories_event.dart';
part 'admin_get_all_categories_state.dart';
part 'admin_get_all_categories_bloc.freezed.dart';

class AdminGetAllCategoriesBloc
    extends Bloc<AdminGetAllCategoriesEvent, AdminGetAllCategoriesState> {
  AdminGetAllCategoriesBloc(this.adminCategoriesRepoImpl)
      : super(const AdminGetAllCategoriesState.loading()) {
    on<AdminGetAllCategoriesEvent>(_getAllCategories);
  }

  FutureOr<void> _getAllCategories(
    AdminGetAllCategoriesEvent event,
    Emitter<AdminGetAllCategoriesState> emit,
  ) async {
    emit(const AdminGetAllCategoriesState.loading());
    final result = await adminCategoriesRepoImpl.getAllCategories();
    result.when(
      success: (response) {
        if (response.data == null ||
            response.data?.categories == null ||
            response.data!.categories!.isEmpty) {
          emit(const AdminGetAllCategoriesState.empty());
        } else {
          emit(
            AdminGetAllCategoriesState.success(
              response,
            ),
          );
        }
      },
      failure: (error) {
        emit(
          AdminGetAllCategoriesState.failure(
            error,
          ),
        );
      },
    );
  }

  final AdminCategoriesRepoImpl adminCategoriesRepoImpl;
}
