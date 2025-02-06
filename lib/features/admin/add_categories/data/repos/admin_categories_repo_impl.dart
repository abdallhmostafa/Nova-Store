import 'package:nova_store/core/network/error_handler.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/core/network/network_result.dart';
import 'package:nova_store/features/admin/add_categories/data/datasource/admin_categories_datasource.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo.dart';

class AdminCategoriesRepoImpl implements AdminCategoriesRepo {
  AdminCategoriesRepoImpl(this._adminCategoriesDatasource);

  final AdminCategoriesDatasource _adminCategoriesDatasource;

  @override
  Future<NetworkResult<AdminCategoryModelResponse, GraphqlErrorModel>>
      getAllCategories() async {
    try {
      final response = await _adminCategoriesDatasource.getAllCategories();
      if (response.data == null || response.data?.categories == null) {
        return NetworkResult.failure(
          error: ErrorHandler.handleGraphqlError(
            graphqlError: 'Oops, something went wrong',
          ),
        );
      }

      return NetworkResult.success(response);
    } catch (e) {
      return NetworkResult.failure(
        error: ErrorHandler.handleGraphqlError(
          graphqlError: e,
        ),
      );
    }
  }
}
