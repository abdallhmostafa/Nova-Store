import 'package:nova_store/features/admin/add_categories/data/model/admin_create_category_request_model.dart';

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
}
