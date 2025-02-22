import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_delete_category_request_model.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_update_category_request_model.dart';

class AdminGraphql {
  factory AdminGraphql() => instance;
  AdminGraphql._();
  static AdminGraphql instance = AdminGraphql._();
  Map<String, dynamic> getUsersNumber() {
    return {
      'query': '''
{
  users{
		
		name
		
  }
}
    ''',
    };
  }

  Map<String, dynamic> getProductsNumberGraphql() {
    return {
      'query': '''
   {   
          products{
      title
        }
    }
    ''',
    };
  }

  Map<String, dynamic> getCategoriesNumberGraphql() {
    return {
      'query': '''
    {
      categories{
        name
      }
    }
    ''',
    };
  }

  Map<String, dynamic> getAllCategories() {
    return {
      'query': '''
    {
  categories{
		id
		name
		image
  }
}
    ''',
    };
  }

  Map<String, dynamic> createCategory({
    required AdminCreateCategoryRequestModel createCategoryRequest,
  }) {
    return {
      'query': r'''
mutation createCategory ($name: String!, $image: String!) {
	addCategory(
		data: { name: $name, image: $image }
	) {
		id
		name
		image
	}
}

    ''',
      'variables': {
        'name': createCategoryRequest.name,
        'image': createCategoryRequest.image,
      },
    };
  }

  Map<String, dynamic> deleteCategory({
    required AdminDeleteCategoryRequestModel deleteCategoryRequest,
  }) {
    return {
      'query': r'''
  mutation DeleteCategory($categoryId: ID!) {
	  deleteCategory(id: $categoryId) 
      }
      ''',
      'variables': {
        'categoryId': deleteCategoryRequest.id,
      },
    };
  }

  Map<String, dynamic> updateCategory({
    required AdminUpdateCategoryRequestModel updateCategoryRequest,
  }) {
    return {
      'query': r'''
mutation updateCategory($categoryId: ID!, $name: String, $image: String) {
	updateCategory(id: $categoryId, changes: { name: $name, image: $image }) {
		id
		
	}
}

      ''',
      'variables': {
        'categoryId': updateCategoryRequest.id,
        'name': updateCategoryRequest.name,
        'image': updateCategoryRequest.image,
      },
    };
  }
}
