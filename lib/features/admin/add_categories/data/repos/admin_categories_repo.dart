import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/core/network/network_result.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_reponse_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_response_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_response_model.dart';

abstract class AdminCategoriesRepo {
  Future<NetworkResult<AdminCategoryModelResponse, GraphqlErrorModel>>
      getAllCategories();

  Future<NetworkResult<AdminCreateCategoryResponseModel, GraphqlErrorModel>>
      createCategory({
    required AdminCreateCategoryRequestModel createCategoryRequest,
  });

  Future<NetworkResult<AdminDeleteCategoryResponseModel, GraphqlErrorModel>>
      deleteCategory({
    required AdminDeleteCategoryRequestModel deleteCategoryRequest,
  });

  Future<NetworkResult<AdminUpdateCategoryResponseModel, GraphqlErrorModel>>
      updateCategory({
    required AdminUpdateCategoryRequestModel updateCategoryRequest,
  });
}
