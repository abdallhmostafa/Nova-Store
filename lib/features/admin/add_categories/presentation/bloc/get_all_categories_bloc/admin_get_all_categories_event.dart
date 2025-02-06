part of 'admin_get_all_categories_bloc.dart';

@freezed
class AdminGetAllCategoriesEvent with _$AdminGetAllCategoriesEvent {
  const factory AdminGetAllCategoriesEvent.getAllCategories() =
      _GetAllCategories;
}
