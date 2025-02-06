import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/core/network/network_result.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';

abstract class AdminCategoriesRepo {
  Future<NetworkResult<AdminCategoryModelResponse, GraphqlErrorModel>>
      getAllCategories();
}
