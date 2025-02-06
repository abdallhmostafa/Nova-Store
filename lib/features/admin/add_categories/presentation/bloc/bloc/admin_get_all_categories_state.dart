part of 'admin_get_all_categories_bloc.dart';

@freezed
class AdminGetAllCategoriesState with _$AdminGetAllCategoriesState {
  const factory AdminGetAllCategoriesState.loading() = Loading;
  const factory AdminGetAllCategoriesState.success(
    AdminCategoryModelResponse adminCategoryModelResponse,
  ) = Success;
  const factory AdminGetAllCategoriesState.failure(
    GraphqlErrorModel graphqlErrorModel,
  ) = Failure;
}
