import 'package:nova_store/core/network/error_handler.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/core/network/network_result.dart';
import 'package:nova_store/features/admin/add_categories/data/datasource/admin_categories_datasource.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_reponse_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_response_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_response_model.dart';
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

  @override
  Future<NetworkResult<AdminCreateCategoryResponseModel, GraphqlErrorModel>>
      createCategory({
    required AdminCreateCategoryRequestModel createCategoryRequest,
  }) async {
    try {
      final response = await _adminCategoriesDatasource.createCategory(
        createCategoryRequest,
      );
      if (response.data == null || response.data?.addCategory == null) {
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

  @override
  Future<NetworkResult<AdminDeleteCategoryResponseModel, GraphqlErrorModel>>
      deleteCategory({
    required AdminDeleteCategoryRequestModel deleteCategoryRequest,
  }) async {
    try {
      final response = await _adminCategoriesDatasource.deleteCategory(
        deleteCategoryRequest,
      );
      if (response.data == null || response.data?.deleteCategory == null) {
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

  @override
  Future<NetworkResult<AdminUpdateCategoryResponseModel, GraphqlErrorModel>>
      updateCategory({
    required AdminUpdateCategoryRequestModel updateCategoryRequest,
  }) async {
    try {
      final response = await _adminCategoriesDatasource.updateCategory(
        updateCategoryRequest,
      );
      if (response.data == null || response.data?.updateCategory == null) {
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
