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
    on<AdminGetAllCategoriesEvent>((event, emit) {});
  }
  final AdminCategoriesRepoImpl adminCategoriesRepoImpl;
}
