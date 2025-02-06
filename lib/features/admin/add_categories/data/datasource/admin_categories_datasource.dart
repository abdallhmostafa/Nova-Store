import 'package:nova_store/core/graphql/admin/admin_graphql.dart';
import 'package:nova_store/core/network/api_service.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_reponse_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';

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
}
