import 'package:nova_store/core/graphql/admin/admin_graphql.dart';
import 'package:nova_store/core/network/api_service.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_reponse_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_response_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_response_model.dart';

class AdminCategoriesDatasource {
  AdminCategoriesDatasource(this._apiService, this._adminGraphql);
  final ApiService _apiService;
  final AdminGraphql _adminGraphql;

  Future<AdminCategoryModelResponse> getAllCategories() async {
    final response = await _apiService.getAllCategories(
      _adminGraphql.getAllCategories(),
    );
    return response;
  }

  Future<AdminCreateCategoryResponseModel> createCategory(
    AdminCreateCategoryRequestModel createCategoryRequest,
  ) async {
    final response = await _apiService.createCategory(
      _adminGraphql.createCategory(
        createCategoryRequest: createCategoryRequest,
      ),
    );
    return response;
  }

  Future<AdminDeleteCategoryResponseModel> deleteCategory(
    AdminDeleteCategoryRequestModel deleteCategoryRequest,
  ) async {
    final response = await _apiService.deleteCategory(
      _adminGraphql.deleteCategory(
        deleteCategoryRequest: deleteCategoryRequest,
      ),
    );
    return response;
  }

  Future<AdminUpdateCategoryResponseModel> updateCategory(
    AdminUpdateCategoryRequestModel updateCategoryRequest,
  ) async {
    final response = await _apiService.updateCategory(
      _adminGraphql.updateCategory(
        updateCategoryRequest: updateCategoryRequest,
      ),
    );
    return response;
  }
}
